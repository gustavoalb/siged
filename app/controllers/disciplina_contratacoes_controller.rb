# -*- encoding : utf-8 -*-
class DisciplinaContratacoesController < ApplicationController
  load_and_authorize_resource
  # GET /descricao_cargos
  # GET /descricao_cargos.xml
  before_filter :dados_essenciais
  def index
    @search = DisciplinaContratacao.scoped_search(params[:search])
    @disciplina_contratacoes = @search.order(:codigo,:nome).paginate :page => params[:page], :order => 'created_at DESC', :per_page => 10

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @disciplina_contratacaos }
    end
  end

  # GET /descricao_cargos/1
  # GET /descricao_cargos/1.xml
  def show
    @disciplina_contratacao = DisciplinaContratacao.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @disciplina_contratacao }
    end
  end

  # GET /descricao_cargos/new
  # GET /descricao_cargos/new.xml
  def new
    @disciplina_contratacao = DisciplinaContratacao.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @disciplina_contratacao }
    end
  end

  # GET /descricao_cargos/1/edit
  def edit
    @disciplina_contratacao = DisciplinaContratacao.find(params[:id])
  end

  # POST /descricao_cargos
  # POST /descricao_cargos.xml
  def create
    @disciplina_contratacao = DisciplinaContratacao.new(params[:disciplina_contratacao])

    respond_to do |format|
      if @disciplina_contratacao.save
        format.html { redirect_to(@disciplina_contratacao, :notice => 'Descricao cargo cadastrado com sucesso.') }
        format.xml  { render :xml => @disciplina_contratacao, :status => :created, :location => @disciplina_contratacao }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @disciplina_contratacao.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /descricao_cargos/1
  # PUT /descricao_cargos/1.xml
  def update
    @disciplina_contratacao = DisciplinaContratacao.find(params[:id])

    respond_to do |format|
      if @disciplina_contratacao.update_attributes(params[:disciplina_contratacao])
        format.html { redirect_to(@disciplina_contratacao, :notice => 'Descricao cargo atualizado com sucesso.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @disciplina_contratacao.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /descricao_cargos/1
  # DELETE /descricao_cargos/1.xml
  def destroy
    @disciplina_contratacao = DisciplinaContratacao.find(params[:id])
    @disciplina_contratacao.destroy

    respond_to do |format|
      format.html { redirect_to(disciplina_contratacoes_url) }
      format.xml  { head :ok }
    end
  end
end

