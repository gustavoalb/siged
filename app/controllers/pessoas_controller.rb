class PessoasController < ApplicationController
  load_and_authorize_resource
  before_filter :dados_essenciais
  # GET /pessoas
  # GET /pessoas.xml


  def index
   @search = Pessoa.scoped_search(params[:search])
   if params[:search]
     @busca = params[:search][:busca]
   end
   @pessoas =  @search.order('nome ASC').paginate :page => params[:page], :per_page => 10

   respond_to do |format|
    format.html # index.html.erb
    format.xml  { render :xml => @pessoas }
  end
end

def departamento
 @departamento = Departamento.find params[:departamento]
 @pessoa = Pessoa.find(params[:pessoa_id])
 render :partial=>"qualificar"
end

def especificar_lotacao
 @pessoa = Pessoa.find(params[:pessoa_id])
 @funcionario = Funcionario.find(params[:funcionario_id])
 render :layout=>'facebox'
end


def qualificar_funcionario
  @departamentos = Departamento.order(:nome).collect{|p|[p.nome,p.id]}
  @pessoa = Pessoa.find(params[:pessoa_id])
  render :partial=>"qualificar_funcionario"
end

def edicao_rapida
  @departamentos = Departamento.order(:nome).collect{|p|[p.nome,p.id]}
  @pessoa = Pessoa.find(params[:pessoa_id])
  render :partial=>"edicao_rapida"
end

def boletins
  @pessoa = Pessoa.find(params[:pessoa_id])
  @boletins = BoletimPessoal.da_pessoa(@pessoa.id).all.paginate :page => params[:page], :order => 'created_at DESC', :per_page => 10
end

def gerar_boletim
 @pessoa = Pessoa.find(params[:pessoa_id])
 @boletim = BoletimPessoal.new(params[:pessoa])
end

def boletim_pessoal
  @pessoa = Pessoa.find(params[:pessoa_id])
  # @boletim = @pessoa.boletins.find(params[:boletim_id])
  render :layout=>nil
end

def salvar_boletim
  @pessoa = Pessoa.find(params[:pessoa_id])
  @boletim = @pessoa.boletins.new(params[:boletim_pessoal])
  @boletim.mes = params[:date][:mes]
  @boletim.ano = params[:date][:ano]
  respond_to do |format|
    if @boletim.save
      format.html { redirect_to(pessoa_boletins_url, :notice => 'Pessoa cadastrada com sucesso.') }
      format.xml  { render :xml => @boletim, :status => :created, :location => @boletim }
    else
      format.html { render :action => "new" }
      format.xml  { render :xml => @boletim.errors, :status => :unprocessable_entity }
    end
  end
end

# GET /pessoas/1
# GET /pessoas/1.xml
def show
  @pessoa = Pessoa.find(params[:id])
  @listas = @pessoa.listas

  respond_to do |format|
    format.html # show.html.erb
    format.xml  { render :xml => @pessoa }
  end
end
def naturalidade
  @estado = Estado.find_by_nome(params[:estado])
  @cidades= @estado.cidades.all.collect{|c|[c.nome,c.id]}
  render :partial=>"naturalidade"
end

#  def gerar_relatorio
#    table = Pessoa.order(:nome).report_table(:all,:limit=>100,
#      :only       => %w[id nome cpf rg]
#      )
#   sorted_table = table.sort_rows_by("name", :order => :ascending)


#    send_data sorted_table.to_pdf,
#      :type         => "application/pdf",
#      :disposition  => "inline",
#      :filename     => "report.pdf"
#  end

def gerar_relatorio
  pdf = PDFController.render_pdf
  send_data pdf,
  :type         => "application/pdf",
  :disposition  => "inline",
  :filename     => "report.pdf"
end





def qualificar
  @pessoa = Pessoa.find(params[:pessoa_id])
  @funcionarios = @pessoa.funcionarios.all
  @funcionario = @pessoa.funcionarios.first
  @departamento = Departamento.find(params[:departamento])
  @lotacoes = @pessoa.funcionarios.last.lotacoes.all
  respond_to do |format|
   format.html # show.html.erb
   format.pdf do
    render :pdf =>"#{@funcionario.pessoa.nome.downcase.parameterize} - #{Time.now.to_s_br}",
    :layout => "pdf", # OPTIONAL
    :wkhtmltopdf=>"/usr/bin/wkhtmltopdf",
    :margin => {:top=> 0,                         
      :bottom=> 30},
                #:left=> 2,
               # :right=> 3},
               :footer=>{:html =>{:template => 'pessoas/footer.pdf.erb'}},
               :zoom => 0.873 ,
               :orientation => 'Portrait'

             end
           end
         end

# GET /pessoas/new
# GET /pessoas/new.xml
def new
  @pessoa = Pessoa.new

  respond_to do |format|
    format.html # new.html.erb
    format.xml  { render :xml => @pessoa }
  end
end

# GET /pessoas/1/edit
def edit
  @pessoa = Pessoa.find(params[:id])
end

# POST /pessoas
# POST /pessoas.xml
def create
  @pessoa = Pessoa.new(params[:pessoa])
  @funcionario = Funcionario.find(params[:funcionario_id])
  respond_to do |format|
    if @pessoa.save
      format.html { redirect_to(@pessoa, :notice => 'Pessoa cadastrada com sucesso.') }
      format.xml  { render :xml => @pessoa, :status => :created, :location => @pessoa }
    else
      format.html { render :action => "new" }
      format.xml  { render :xml => @pessoa.errors, :status => :unprocessable_entity }
    end
  end
end

# PUT /pessoas/1
# PUT /pessoas/1.xml
def update
  @pessoa = Pessoa.find(params[:id])
  respond_to do |format|
    if @pessoa.update_attributes(params[:pessoa])
      if params[:edicao_rapida]
        format.html { redirect_to(:back, :notice => 'Pessoa atualizada com sucesso.') }
        format.xml  { head :ok }
      else
        format.html { redirect_to(@pessoa, :notice => 'Pessoa atualizada com sucesso.') }
        format.xml  { head :ok }
      end
    else
      format.html { render :action => "edit" }
      format.xml  { render :xml => @pessoa.errors, :status => :unprocessable_entity }
    end
  end
end

# DELETE /pessoas/1
# DELETE /pessoas/1.xml
def destroy
  @pessoa = Pessoa.find(params[:id])
  @pessoa.destroy

  respond_to do |format|
    format.html { redirect_to(pessoas_url) }
    format.xml  { head :ok }
  end
end
def adicionar_a_lista
  @pessoa = Pessoa.find(params[:pessoa_id])
  @lista = @pessoa.listas.new
  if @pessoa.listas.size>0
    tipos = @pessoa.listas.collect{|l|l.tipo_lista.id}
    @tipos_lista = TipoLista.pessoal_filtro(tipos).all.collect{|t|[t.nome,t.id]}
  else
    @tipos_lista = TipoLista.pessoal.all.collect{|t|[t.nome,t.id]}
  end
  render :partial=>"adicionar_a_listas"
end

def salvar_lista
  @pessoa = Pessoa.find(params[:pessoa_id])
  @lista = @pessoa.listas.new(params[:lista])
  respond_to do |format|
    if @lista.save
      format.html { redirect_to(pessoas_url, :notice => "Pessoa adicionada à lista #{@lista.tipo_lista.nome} com sucesso.") }
      format.xml  { render :xml => @pessoa, :status => :created, :location => @pessoa }
    else
      format.html { render :action => "index" }
      format.xml  { render :xml => @lista.errors, :status => :unprocessable_entity }
    end
  end
end



end
