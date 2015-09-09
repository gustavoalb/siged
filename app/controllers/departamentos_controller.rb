# -*- encoding : utf-8 -*-
class DepartamentosController < ApplicationController
  load_and_authorize_resource
  def autocomplete_departamento_nome
    term = params[:term]
    departamentos = Departamento.where("nome ilike ? or sigla ilike ?","%#{term}%","%#{term}%").order("hierarquia asc")
    orgaos = Orgao.where("nome ilike ? or sigla ilike ?","%#{term}%","%#{term}%").order("nome asc")
    departamentos = orgaos+departamentos
    render :json => departamentos.map { |departamento| {:id => departamento.id, :label => departamento.nome, :value => departamento.nome} }
  end
  # GET /departamentos
  # GET /departamentos.xml
  before_filter :orgao,:dados_essenciais,:except=>[:auto_complete_for_pessoa_nome,:autocomplete_departamento_nome]

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
    @lotacoes = @departamento.lotacoes
    @pdf = CombinePDF.new
    @lotacoes.each do |l|
      ponto = l.pontos.find_by_data(data)||l.funcionario.pontos.create(:data=>data,:funcionario_id=>l.funcionario.id,:lotacao_id=>l.id,:usuario=>current_user)
      @pdf << CombinePDF.parse(ponto.arquivo_ponto.file.read)
    end
    send_data @pdf.to_pdf,:filename=>"Ponto Mensal - #{@departamento.sigla} - #{ I18n.l(data,:format=>"%B de %Y").upcase}.pdf",:type=> 'application/pdf'
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
