class EscolasController < ApplicationController
  load_and_authorize_resource
# GET /escolas
# GET /escolas.xml
before_filter :dados_essenciais#,:funcionarios
def index
  @search = Escola.scoped_search(params[:search])
  if params[:search]
    @busca = params[:search][:busca]
  end
  @escolas = @search.order(:nome_da_escola).paginate :page => params[:page], :order => 'created_at DESC', :per_page => 10
  respond_to do |format|
format.html # index.html.erb
format.xml  { render :xml => @escolas }
end
end

# GET /escolas/1
# GET /escolas/1.xml
def show
  @escola = Escola.find_by_slug(params[:id])
  @funcionarios = @escola.funcionarios.joins(:lotacoes_atuais)
  if !@escola.ambientes.none?
  @ambiente = @escola.ambientes.find_by_nome("Sala de Aula")
  @turmas = Turma.find(:all,:joins=>[:serie],:conditions=>["ambiente_id= ? and escola_id = ?",@ambiente.id,@escola.id],:order => 'turno,series.nome')
  else
  @turmas = Turma.find_all_by_escola_id(@escola.id)
end
  respond_to do |format|
format.html # show.html.erb
format.xml  { render :xml => @escola }
end
end

def controle_turma
  @escola = Escola.find(params[:escola_id])
  @turma = @escola.turmas.find_by_nome(params[:turma])
  @especificacoes = @turma.especificacoes
  render :update do |page|
    page.visual_effect :highlight,"tab-three"
    page.replace_html "tab-three", :partial=>"controle_turma"
  end
end

def listar_turmas
  @escola = Escola.find(params[:escola_id])
  @ambiente = @escola.ambientes.find_by_nome("Sala de Aula")
  @turmas = Turma.find(:all,:joins=>[:serie],:conditions=>["ambiente_id= ? and escola_id = ?",@ambiente.id,@escola.id],:order => 'turno,series.nome')
  render :update do |page|
    page.visual_effect :highlight,"tab-three"
    page.replace_html "tab-three", :partial=>"turmas"
  end
end


# GET /escolas/new
# GET /escolas/new.xml
def new
  @escola = Escola.new

  respond_to do |format|
format.html # new.html.erb
format.xml  { render :xml => @escola }
end
end

# GET /escolas/1/edit
def edit
  @escola = Escola.find(params[:id])
end

# POST /escolas
# POST /escolas.xml
def create
  @escola = Escola.new(params[:escola])

  respond_to do |format|
    if @escola.save
      format.html { redirect_to(@escola, :notice => 'Escola cadastrada com sucesso.') }
      format.xml  { render :xml => @escola, :status => :created, :location => @escola }
    else
      format.html { render :action => "new" }
      format.xml  { render :xml => @escola.errors, :status => :unprocessable_entity }
    end
  end
end

# PUT /escolas/1
# PUT /escolas/1.xml
def update
  @escola = Escola.find(params[:id])

  respond_to do |format|
    if @escola.update_attributes(params[:escola])
      format.html { redirect_to(@escola, :notice => 'Escola atualizada com sucesso.') }
      format.xml  { head :ok }
    else
      format.html { render :action => "edit" }
      format.xml  { render :xml => @escola.errors, :status => :unprocessable_entity }
    end
  end
end

# DELETE /escolas/1
# DELETE /escolas/1.xml
def destroy
  @escola = Escola.find(params[:id])
  @escola.destroy

  respond_to do |format|
    format.html { redirect_to(escolas_url) }
    format.xml  { head :ok }
  end
end

end
