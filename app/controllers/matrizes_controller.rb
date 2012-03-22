class MatrizesController < ApplicationController
  load_and_authorize_resource
  # GET /matrizes
  # GET /matrizes.xml
  def index
    #@search = Matrize.scoped_search(params[:search])
    @matrizes = Matriz.all.paginate :page => params[:page], :order => 'created_at DESC', :per_page => 10

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @matrizes }
    end
  end

     def criar_curriculo
       @matriz = Matrize.find params[:id]
       s = Serie.find params[:serie]
       render :partial=>"curriculos"
     end
  # GET /matrizes/1
  # GET /matrizes/1.xml
  def show
    @matriz = Matriz.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @matriz }
    end
  end

  # GET /matrizes/new
  # GET /matrizes/new.xml
  def new
    @matriz = Matriz.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @matriz }
    end
  end

def salvar_curriculo
end

def configurar_curriculos
 @matriz = Matriz.find params[:matriz_id]
  if @matriz.curriculos.size==0
    @matriz.criar_curriculo
  end
    @curriculos = @matriz.curriculos.all
 end
  # GET /matrizes/1/edit
  def edit
    @matriz = Matriz.find(params[:id])
  end

  # POST /matrizes
  # POST /matrizes.xml
  def create
    @matriz = Matriz.new(params[:matriz])


    respond_to do |format|
      if @matriz.save
        @series = @matriz.series.all
        format.html { redirect_to(@matriz, :notice => 'Matrize cadastrado com sucesso.') }
        format.xml  { render :xml => @matriz, :status => :created, :location => @matriz }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @matriz.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /matrizes/1
  # PUT /matrizes/1.xml
  def update
    @matriz = Matriz.find(params[:id])

    respond_to do |format|
      if @matriz.update_attributes(params[:matriz])
        format.html { redirect_to(@matriz, :notice => 'Matrize atualizado com sucesso.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @matriz.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /matrizes/1
  # DELETE /matrizes/1.xml
  def destroy
    @matriz = Matriz.find(params[:id])
    @matriz.destroy

    respond_to do |format|
      format.html { redirect_to(matrizes_url) }
      format.xml  { head :ok }
    end
  end
end
