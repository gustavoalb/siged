# -*- encoding : utf-8 -*-
class SeriesController < ApplicationController
  load_and_authorize_resource
  before_filter :nivel
  # GET /series
  # GET /series.xml
  def index
    #@search = Serie.scoped_search(params[:search])
    @series = Serie.do_nivel(@nivel).order("nome asc","codigo asc").paginate :page => params[:page], :per_page => 10

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @series }
    end
  end

  # GET /series/1
  # GET /series/1.xml
  def show
    @serie = Serie.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @serie }
    end
  end

  # GET /series/new
  # GET /series/new.xml
  def new
    @serie = Serie.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @serie }
    end
  end

  # GET /series/1/edit
  def edit
    @serie = Serie.find(params[:id])
  end

  # POST /series
  # POST /series.xml
  def create
    @serie = Serie.new(params[:serie])

    respond_to do |format|
      if @serie.save
        format.html { redirect_to(niveis_ensino_serie_url(@nivel,@serie) , :notice => 'Serie cadastrado com sucesso.') }
        format.xml  { render :xml => @serie, :status => :created, :location => @serie }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @serie.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /series/1
  # PUT /series/1.xml
  def update
    @serie = Serie.find(params[:id])

    respond_to do |format|
      if @serie.update_attributes(params[:serie])
        format.html { redirect_to(niveis_ensino_serie_url(@nivel,@serie), :notice => 'Serie atualizado com sucesso.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @serie.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /series/1
  # DELETE /series/1.xml
  def destroy
    @serie = Serie.find(params[:id])
    @serie.destroy

    respond_to do |format|
      format.html { redirect_to(niveis_ensino_series_url,:notice=>"Série deletada com sucesso") }
      format.xml  { head :ok }
    end
  end
end

private
def nivel
  @nivel = NiveisEnsino.find(params[:niveis_ensino_id])
end

