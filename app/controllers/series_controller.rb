class SeriesController < ApplicationController
  load_and_authorize_resource
  # GET /series
  # GET /series.xml
  def index
    @search = Serie.scoped_search(params[:search])
    @series = @search.all.paginate :page => params[:page], :order => 'created_at DESC', :per_page => 10

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
        format.html { redirect_to(@serie, :notice => 'Serie cadastrado com sucesso.') }
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
        format.html { redirect_to(@serie, :notice => 'Serie atualizado com sucesso.') }
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
      format.html { redirect_to(series_url) }
      format.xml  { head :ok }
    end
  end
end
