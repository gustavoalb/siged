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

  def gerar_pontos
    @departamento = Departamento.find(params[:departamento_id])
    render :layout=>'facebox'
  end

  def salvar_pontos
    data = Date.civil(params[:ponto]["data(1i)"].to_i, params[:ponto]["data(2i)"].to_i, params[:ponto]["data(3i)"].to_i)
    @departamento = Departamento.find(params[:departamento_id])
    @funcionarios = @departamento.funcionarios.joins(:pessoa).order('pessoas.nome asc')
    @pasta = Rails.root.join("#{SHARED}/pontos/#{@orgao.sigla}")
    @pasta1 = Rails.root.join("#{SHARED}/pontos/#{@orgao.sigla}/#{@departamento.sigla.downcase}")
    @pasta2 = Rails.root.join("#{SHARED}/pontos/#{@orgao.sigla}/#{@departamento.sigla.downcase}/geral")
    @funcionarios.each do |f|
      f.pontos.create(:data=>data,:funcionario_id=>f.id,:lotacao_id=>f.lotacoes.ativo.find_by_departamento_id(@departamento.id).id)
    end
    @arquivos = Dir.glob(@pasta.join("**/**#{data.strftime('%Y-%m')}.pdf")).collect{|d|"#{d} "}
    @arquivo = @pasta2.join("#{data.strftime('%Y-%m')}.pdf")
    if !@pasta.exist?
      Dir.mkdir(@pasta)
    end
    if !@pasta1.exist?
      Dir.mkdir(@pasta)
    end
    if !@pasta2.exist?
      Dir.mkdir(@pasta2)
    end
      system("pdftk #{@arquivos} cat output #{@arquivo}")
      redirect_to orgao_departamento_pontos_funcionarios_path(@orgao,@departamento),:notice=>"Pontos gerados com sucesso. <a href=/pontos/#{@orgao.sigla}/#{@departamento.sigla.downcase}/geral/#{data.strftime('%Y-%m')}.pdf>Abrir</a>"
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

  private
  def orgao
    @orgao = Orgao.find(params[:orgao_id])
  end
