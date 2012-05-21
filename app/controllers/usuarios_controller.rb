class UsuariosController < ApplicationController
  # GET /users
  # GET /users.xml
  load_and_authorize_resource
  def index
     @search = Usuario.scoped_search(params[:search])
     if params[:search] and params[:search][:busca]
     @busca = params[:search][:busca]
   end
     @users =  @search.order('name ASC').paginate :page => params[:page], :per_page => 10

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @users }
    end
  end

  # GET /users/1
  # GET /users/1.xml
  def show
    @user = Usuario.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user }
    end
  end

  # GET /users/new
  # GET /users/new.xml
  def new
    @user = Usuario.new
    @entidades = Entidade.all.collect{|e|[e.nome,e.id]}
    @orgaos=Orgao.order(:sigla).collect{|o|[o.sigla,o.id]}
    @current_method = "new"

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user }
    end
  end

  def departamentos
    @orgao=Orgao.find params[:org]
    @departamentos=@orgao.departamentos.order(:sigla).collect{|d|[d.sigla,d.id]}
    render :update do |page|
      page.visual_effect :highlight,"departamentos"
      page.replace_html "departamentos", :partial=>"departamentos"
    end
  end
  # GET /users/1/edit
  def edit
    @user = Usuario.find(params[:id])
    @orgaos=Orgao.order(:sigla).collect{|o|[o.sigla,o.id]}
    @entidades = Entidade.all.collect{|e|[e.nome,e.id]}
    if !@user.orgao.nil?
      @orgao= Orgao.find(@user.orgao_id)
      @departamentos=@orgao.departamentos.order(:sigla).collect{|d|[d.sigla,d.id]}
    end
  end

  # POST /users
  # POST /users.xml
  def create
    @user = Usuario.new(params[:usuario])
    @orgaos=Orgao.order(:sigla).collect{|o|[o.sigla,o.id]}
    respond_to do |format|
      if @user.save
        format.html { redirect_to(usuarios_url, :notice => 'Usuario criado com sucesso.') }
        format.xml  { render :xml => @user, :status => :created, :location => @user }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.xml
  def update
    @user = Usuario.find(params[:id])
    @orgaos=Orgao.order(:sigla).collect{|o|[o.sigla,o.id]}
    if params[:usuario][:password].blank?
     params[:usuario].delete(:password)
     params[:usuario].delete(:password_confirmation)
   end

   respond_to do |format|
    if @user.update_attributes(params[:usuario])
      format.html { redirect_to(@user, :notice => "Usuario #{@user.username} atualizado com sucesso.") }
      format.xml  { head :ok }
    else
      format.html { render :action => "edit" }
      format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
    end
  end
end

  # DELETE /users/1
  # DELETE /users/1.xml
  def destroy
    @user = Usuario.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to(usuarios_url) }
      format.xml  { head :ok }
    end
  end
end
