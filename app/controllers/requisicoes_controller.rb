# -*- encoding : utf-8 -*-
class RequisicoesController < ApplicationController
  skip_before_filter :authenticate_user!,:except=>[:destroy,:update]
  before_filter :dados_essenciais
  # GET /requisicoes
  # GET /requisicoes.xml
  layout 'requisicoes'
  def index
    @funcionario = Funcionario.find(params[:funcionario])
    @requisicoes = Requisicao.do_funcionario(@funcionario.id).order("created_at asc").paginate :page => params[:page], :order => 'created_at DESC', :per_page => 10
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @requisicoes }
    end
  end

  # GET /requisicoes/1
  # GET /requisicoes/1.xml
  def show
    @requisicao = Requisicao.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @requisicao }
    end
  end

  # GET /requisicoes/new
  # GET /requisicoes/new.xml
  def new
    @funcionario = Funcionario.find(params[:funcionario])
    @periodos = Periodo.all.collect{|p|["#{t p.inicio.strftime("%B")} - #{t p.fim.strftime("%B")}",p.id]}
    @requisicao = Requisicao.new
    @requisicao.funcionario = @funcionario

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @requisicao }
    end
  end

  def definir_funcionario
  end

  def gerar_links
    @funcionario = Funcionario.find_by_matricula(params[:funcionario][:matricula])
    render :update do |page|
      if @funcionario
        page.replace_html "links", :partial=>"funcionario_encontrado"
      else
        page.replace_html "links", :partial=>"funcionario_nao_encontrado"
      end
    end
  end

  # GET /requisicoes/1/edit
  def edit
    @requisicao = Requisicao.find(params[:id])
    @funcionario = @requisicao.funcionario
    @periodos = Periodo.all.collect{|p|["#{t p.inicio.strftime("%B")} - #{t p.fim.strftime("%B")}",p.id]}
  end

  # POST /requisicoes
  # POST /requisicoes.xml
  def create
    @requisicao = Requisicao.new(params[:requisicao])
    @funcionario = Funcionario.find(params[:requisicao][:funcionario_id])
    @periodos = Periodo.all.collect{|p|["#{t p.inicio.strftime("%B")} - #{t p.fim.strftime("%B")}",p.id]}
    respond_to do |format|
      if @requisicao.save
        format.html { redirect_to(@requisicao, :notice => 'Requisicao cadastrado com sucesso.') }
        format.xml  { render :xml => @requisicao, :status => :created, :location => @requisicao }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @requisicao.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /requisicoes/1
  # PUT /requisicoes/1.xml
  def update
    @requisicao = Requisicao.find(params[:id])
    @funcionario = Funcionario.find(params[:requisicao][:funcionario_id])
    @periodos = Periodo.all.collect{|p|["#{t p.inicio.strftime("%B")} - #{t p.fim.strftime("%B")}",p.id]}
    respond_to do |format|
      if @requisicao.update_attributes(params[:requisicao])
        format.html { redirect_to(@requisicao, :notice => 'Requisicao atualizado com sucesso.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @requisicao.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /requisicoes/1
  # DELETE /requisicoes/1.xml
  def destroy
    @funcionario = Funcionario.find(params[:funcionario])
    @requisicao = Requisicao.find(params[:id])
    @requisicao.destroy

    respond_to do |format|
      format.html { redirect_to(requisicoes_url(:funcionario=>@funcionario.id)) }
      format.xml  { head :ok }
    end
  end
end
