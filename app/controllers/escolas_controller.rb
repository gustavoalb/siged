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
  @escolas = @search.includes(:entidade).order('entidades.nome',:nome_da_escola).paginate :page => params[:page], :order => 'created_at DESC', :per_page => 10
  respond_to do |format|
format.html # index.html.erb
format.xml  { render :xml => @escolas }
end
end

# GET /escolas/1
# GET /escolas/1.xml
def show
  @escola = Escola.find_by_slug(params[:id])
  @funcionarios = @escola.funcionarios.joins(:lotacoes).where("lotacaos.finalizada = ? and lotacaos.ativo = ?",true,true)
  @encaminhados = @escola.funcionarios.joins(:lotacoes).where("lotacaos.finalizada = ? and lotacaos.ativo = ?",false,true)
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

def incluir_turma
  @escola = Escola.find params[:escola_id]
  if !@escola.ambientes.none?
    @ambiente = @escola.ambientes.find_by_nome("Sala de Aula")
    @matrizes = @escola.matrizes.all.collect{|m|[m.codigo,m.id]}
    @turma = @ambiente.turmas.new
  end
  render :partial=>"turma"
end

def matrizes
 @escola = Escola.find_by_slug(params[:escola_id])
 if !params[:matrix].blank?
  @matriz = Matriz.find(params[:matrix])
  @series = @matriz.series.order(:nome).collect{|s|[s.nome,s.id]}
  render :partial=>"matriz"
else
 render :nothing=>true
end
end

def salvar_turma
  @escola = Escola.find(params[:escola_id])
  @ambiente = @escola.ambientes.find_by_nome("Sala de Aula")
  @turma = @ambiente.turmas.new(params[:turma])
  if @turma.save
    redirect_to("#{escola_path(@escola)}#tab-tres",:notice => "Turma criada com sucesso")
  else
    redirect_to("#{escola_path(@escola)}#tab-tres",:alert => "Turma não pode ser criada.")   
  end
end

def excluir_turma
  @escola = Escola.find(params[:escola_id])
  @ambiente = @escola.ambientes.find params[:ambiente_id]
  @turma = @ambiente.turmas.find(params[:turma_id])
  @turmas = @ambiente.turmas.all
  if @turma.destroy
    render :update do |page|
      page.reload()
    end
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

def configuracoes
  @escola = Escola.find_by_slug(params[:escola_id])
  @matrizes = Matriz.find(:all,:joins=>:nivel,:order=>['niveis_ensinos.nome asc',:codigo])
  render :layout=>'facebox'
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
  if !params[:notice].blank?
    notice = params[:notice]
  else
    notice = 'Escola atualizada com sucesso.'
  end
  respond_to do |format|
    if @escola.update_attributes(params[:escola])
      format.html { redirect_to(@escola, :notice => notice) }
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
