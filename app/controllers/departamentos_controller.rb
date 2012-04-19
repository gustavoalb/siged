class DepartamentosController < ApplicationController
  load_and_authorize_resource
  # GET /departamentos
  # GET /departamentos.xml
  before_filter :orgao,:dados_essenciais,:except=>[:auto_complete_for_pessoa_nome]
  def index
    @search = Departamento.scoped_search(params[:search])
    @departamentos = @search.order(:hierarquia).find(:all,:conditions=>["orgao_id = ?",@orgao.id]).paginate :page => params[:page], :order => 'created_at DESC', :per_page => 10
    #@departamentos = Departamento.do_orgao(@orgao.id).find(:all, :joins =>[:departamento_pai],:order => 'departamento_pais_departamentos.sigla').paginate :page => params[:page], :order => 'created_at DESC', :per_page => 10
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @departamentos }
    end
  end

  # GET /departamentos/1
  # GET /departamentos/1.xml
  def show
    @departamento = Departamento.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @departamento }
    end
  end

  def tarefas
    @orgao = Orgao.find(params[:orgao_id])
    @departamento = Departamento.find(params[:departamento_id])
  end

  def pontos_funcionarios
    @orgao = Orgao.find(params[:orgao_id])
    @departamento = Departamento.find(params[:departamento_id])
    @funcionarios = @departamento.funcionarios
  end

  def pontos
    @departamento = Departamento.find(params[:departamento_id])
    @funcionario = Funcionario.find(params[:funcionario_id])
    @pessoa = @funcionario.pessoa
    @lotacao = @funcionario.lotacoes.atual.first
    @pontos = @funcionario.pontos.da_lotacao(@lotacao.id)
  end
end

def pontos_do_mes
  @departamento = Departamento.find(params[:departamento_id])
  @lotacoes = @departamento.lotacoes
  @range_dias = Date.today.at_beginning_of_month..Date.today.at_end_of_month
  respond_to do |format|
    format.html # index.html.erb
    format.pdf do
        render :pdf =>"pontos do mês #{Time.now.month}", # OPTIONAL
        :wkhtmltopdf=>"/usr/bin/wkhtmltopdf",
        :zoom => 0.8 ,
        :margin=>{1,1,1,1},
        :orientation => 'Portrait'

      end
    end
  end


  # GET /departamentos/new
  # GET /departamentos/new.xml
  def new

    @departamento = Departamento.new
    @pais = Departamento.do_orgao(@orgao.id).order(:nome).collect{|p|[p.nome,p.id]}
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @departamento }
    end
  end

  # GET /departamentos/1/edit
  def edit
    @orgao = Orgao.find(params[:orgao_id])
    @departamento = Departamento.find(params[:id])
    @pais = Departamento.do_orgao(@orgao.id).order(:nome).collect{|p|[p.nome,p.id]}
  end

  # POST /departamentos
  # POST /departamentos.xml
  def create
    @departamento = Departamento.new(params[:departamento])
    respond_to do |format|
      if @departamento.save

        format.html { redirect_to(orgao_departamentos_url(@orgao), :notice => 'Departamento cadastrado com sucesso.') }
        format.xml  { render :xml => @departamento, :status => :created, :location => @departamento }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @departamento.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /departamentos/1
  # PUT /departamentos/1.xml
  def update
    @departamento = Departamento.find(params[:id])
    respond_to do |format|

      if @departamento.update_attributes(params[:departamento])

        format.html { redirect_to(orgao_departamentos_url(@orgao), :notice => 'Departamento atualizado com sucesso.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @departamento.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /departamentos/1
  # DELETE /departamentos/1.xml
  def destroy
    @departamento = Departamento.find(params[:id])
    @departamento.destroy

    respond_to do |format|
      format.html { redirect_to(orgao_departamentos_url) }
      format.xml  { head :ok }
    end
  end


  def gerar_pontos
    @orgao = Orgao.find(params[:orgao_id])
    @departamento = @orgao.departamentos.find(params[:departamento_id])
    @funcionarios = @departamento.funcionarios.all
    @funcionarios.each do |f|
      @ponto = f.pontos.new
      @ponto.lotacao_id = f.lotacoes.atual.last.id
      @lotacao = f.lotacoes.atual.last
      @ponto.data = Time.now
      @ponto.entidade_id = current_user.entidade_id
      @ponto.save
      @range_dias = @ponto.data.at_beginning_of_month..@ponto.data.at_end_of_month
      @arquivo = Pathname.new(Rails.root.join("public/pontos/#{f.pessoa.slug}", "ponto-de-#{f.pessoa.slug}-#{f.slug}-#{@ponto.data.strftime("%b-%Y").downcase}.pdf"))
      @pasta = Rails.root.join("public/pontos/#{f.pessoa.slug}")
      if !File.exist?(@arquivo)
        if !File.exist?(@pasta)
         Dir.mkdir(@pasta)
       end
       pdf = render_to_string :pdf =>"#{@arquivo.basename.to_s}",
       :wkhtmltopdf=>"/usr/bin/wkhtmltopdf",
       :zoom => 0.8 ,
       :margin=>{1,1,1,1},
       :orientation => 'Portrait',
       :template => 'pontos/gerar_pontos.pdf  '
       File.open(@arquivo, 'wb') do |file|
        file << pdf
      end
    end
  end
  render :nothing => true
end


private
def orgao
  @orgao = Orgao.find(params[:orgao_id])
end
