class DepartamentosController < ApplicationController
  load_and_authorize_resource
  # GET /departamentos
  # GET /departamentos.xml
  before_filter :orgao,:dados_essenciais,:except=>[:auto_complete_for_pessoa_nome]
  def index
    #@search = Departamento.scoped_search(params[:search])
    @departamentos = Departamento.do_orgao(@orgao.id).order(:hierarquia).paginate :page => params[:page], :order => 'created_at DESC', :per_page => 10
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
  @funcionario = Funcionario.find(params[:funcionario_id])
  @pessoa = @funcionario.pessoa
  @lotacao = @funcionario.lotacoes.atual.first
  @pontos = @funcionario.pontos.da_lotacao(@lotacao.id)
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
private
  def orgao
  @orgao = Orgao.find(params[:orgao_id])
  end
end