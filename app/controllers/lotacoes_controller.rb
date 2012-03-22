class LotacoesController < ApplicationController
  # GET /lotacaos
  # GET /lotacaos.xml
  load_and_authorize_resource
  before_filter :funcionario,:except=>[:escolas_destino,:complementar_esp,:complementar,:auto_complete_for_escola_nome_da_escola,:auto_complete_for_departamento_nome,:disciplinas_especificacao,:sumesp,:convalidar,:salvar_especificacao,:fator_lotacao,:verifica_lotacao,:regencia,:destino,:lotacao_especial,:tipo_destino,:tipo_especificacao,:fator_lotacao_fisico]
  before_filter :dados_essenciais,:except=>[:convalidar,:auto_complete_for_escola_nome_da_escola,:auto_complete_for_departamento_nome]

  def index
    @lotacaos = Lotacao.all
    @lotacao = Lotacao.new
    @lotacao_aberta = @funcionario.lotacoes.em_aberto.find :all,:conditions=>['funcionario_id=?',@funcionario.id]
    @lotacoes = @funcionario.lotacoes.all.paginate :page => params[:page], :order => 'created_at DESC', :per_page => 200
    @processos = @funcionario.processos.order("created_at ASC, processo ASC")
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @lotacaos }
    end
  end

  def regencia
   if params[:tipo_lotacao].nil?
     render :partial=>"prolabore"
   else
    render :partial=>"regular"
  end
end

def complementar_esp
 if params[:esp]=='ESPECIAL' or params[:esp]=='SUMARIA ESPECIAL'
   render :partial=>"complementar_desabilitado"
 else
   render :partial=>"complementar_habilitado"
 end
end

def sumesp
 if params[:tp_lotacao]=='SUMARIA ESPECIAL'
   render :partial=>"esfera"
 else
  render :partial=>"orgao_regular"
end
end

def complementar
 if params[:complemento]=='1'
   render :partial=>"prolabore"
 else
  render :partial=>"regular"
end
end

def lotacao_especial
 if params[:tp_lotacao]=='ESPECIAL'
   render :partial=>"esfera"
 else
  render :partial=>"orgao_regular"
end
end

def destino
 if params[:esfera].size>0
   @esfera = Esfera.find(params[:esfera])
   @orgaos_esfera = @esfera.orgaos.all.collect{|o|[o.nome,o.id]}
   render :partial=>"destino"
 else
   render :partial=>"destino_nulo"
 end
end



def tipo_destino
 if params[:orgao].size>0
   @orgao = Orgao.find(params[:orgao])
   @esfera = Esfera.find(@orgao.esfera_id)
   @tipos_destino = TipoDestino.all.collect{|e|[e.nome,e.id]}
   if @orgao.departamentos.size>0
    render :partial=>"tipo_destino"
  else
   render :partial=>"destino_nulo"
 end
else
  render :partial=>"destino_nulo"
end
end

def escolas_destino
 if params[:tipo_destino].size>0
  @orgao = Orgao.find(params[:orgao_id])
  @tipo = TipoDestino.find(params[:tipo_destino])
  @escolas_lot_especial = @orgao.escolas.order(:nome_da_escola).collect{|e|[e.nome_da_escola,e.id]}
  @departamentos = @orgao.departamentos.order(:nome).collect{|e|[e.nome,e.id]}
  case @tipo.nome
  when 'Escola' then
    if @escolas_lot_especial.size==0
     render :partial=>"destino_nulo"
   else
     render :partial=>"escolas"
   end
 when 'Departamento' then
   render :partial=>"departamentos"
 end

else
 render :partial=>"destino_nulo"
end
end



# GET /lotacaos/1
# GET /lotacaos/1.xml
def show
  @lotacao = Lotacao.find(params[:id])

  respond_to do |format|
    format.html # show.html.erb
    format.xml  { render :xml => @lotacao }
  end
end


def especificar_lotacao
  @funcionario = Funcionario.find(params[:funcionario_id])
  @lotacao = Lotacao.find(params[:lotacao_id])
  @escola_lotacao = @lotacao.escola
  @especificacao= EspecificarLotacao.new
  render :layout=>"facebox"

end

def auto_complete_for_escola_nome_da_escola
  @escolas = Escola.find(:all,
  :conditions => [ 'LOWER(nome_da_escola) iLIKE ?',
    '%' + params[:escola][:nome_da_escola].downcase + '%' ])
    render :partial => "busca_escolas"

  end

  def auto_complete_for_departamento_nome
    @departamentos = Departamento.find(:all,
    :conditions => [ 'LOWER(nome) iLIKE ?',
      '%' + params[:departamento][:nome].downcase + '%' ])
      render :partial => "busca_departamentos"

    end

    def disciplinas_especificacao
      @funcionario = Funcionario.find(params[:funcionario_id])
      @lotacao = @funcionario.lotacoes.find(params[:lotacao_id])
      @escola_lotacao = @lotacao.escola
      @turma = Turma.find params[:turma]
      @serie = @turma.serie
      @disciplinas = @serie.disciplinas.fun_habilitacao(@funcionario.ids_disciplinas).collect{|d|[d.nome,d.id]}
      render :partial=>"disciplinas"
    end

    def tipo_especificacao
      @funcionario = Funcionario.find(params[:funcionario_id])
      @lotacao = @funcionario.lotacoes.find(params[:lotacao_id])
      @escola_lotacao = @lotacao.escola
      @tipo = params[:tipo]
      render :partial=>"tipo_especificacao"
    end


    def salvar_confirmacao
      @funcionario = Funcionario.find(params[:funcionario_id])
      codi=params[:codigo]
      @lotacao = Lotacao.em_aberto.find(params[:lotacao_id])
      cpf = @lotacao.codigo_a(codi)
      if @lotacao.codigo_a(codi)
        @lotacao.confirma_lotacao
        redirect_to pessoa_funcionario_lotacoes_url(@pessoa,@funcionario), :notice => 'Confirmação de Lotação Efetuada.'
      else
       redirect_to  pessoa_funcionario_lotacoes_url(@pessoa,@funcionario), :alert => 'Confirmação de Lotação não executada, código incorreto.'
     end

   end

   def salvar_especificacao
    @funcionario = Funcionario.find(params[:funcionario_id])
    @pessoa = @funcionario.pessoa
    @lotacao = Lotacao.find(params[:lotacao_id])
    @tipo=params[:especificar_lotacao][:tipo]
    if @tipo!="SALA AMBIENTE"
      @turma = Turma.find(params[:especificar_lotacao][:turma_id])
      @serie = @turma.serie
      @disciplina = @serie.disciplinas.find(params[:especificar_lotacao][:disciplina_id])
      @curriculo = @turma.matriz.curriculos.da_serie(@serie.id).da_disciplina(@disciplina.id).last
      @especificar = @disciplina.fator_de_lotacoes.new(params[:especificar_lotacao])
    end
    @escola = @lotacao.escola
    respond_to do |format|
      if @funcionario.especificar_lotacao(@escola,@turma,@disciplina,@curriculo,@lotacao,@tipo)
       format.html { redirect_to(pessoa_funcionario_lotacoes_path(@pessoa,@funcionario), :notice => "O Funcionário foi lotado com sucesso.") }
     end
   end

 end


 def salvar_cancelamento

  @funcionario = Funcionario.find(params[:funcionario_id])
  motivo=params[:motivo]
  @lotacao = Lotacao.em_aberto.find(params[:lotacao_id])
  @lotacao.cancela_lotacao(motivo)
  if params[:cancelar][:cancelar]=="true"
    redirect_to lotacoes_convalidar_path, :notice => 'Lotação Cancelada.'
  elsif params[:cancelar][:cancelar]=="false" or params[:cancelar][:cancelar]==nil or params[:cancelar][:cancelar]==""
    redirect_to pessoa_funcionario_lotacoes_path(@pessoa,@funcionario), :notice => 'Lotação Cancelada.'
  end
end


def salvar_devolucao
  @funcionario = Funcionario.find(params[:funcionario_id])
  motivo=params[:motivo]
  @lotacao = Lotacao.finalizada.find(params[:lotacao_id])
  @lotacao.devolve_funcionario(motivo)
  redirect_to pessoa_funcionario_lotacoes_path(@pessoa,@funcionario), :notice => 'Funcionário Devolvido ao NUPES'
end

def salvar_convalidacao
  @funcionario = Funcionario.find(params[:funcionario_id])
  @lotacao = Lotacao.em_aberto.find(params[:lotacao_id])
  @lotacao.devolve_funcionario(motivo)
  redirect_to pessoa_funcionario_lotacoes_path(@pessoa,@funcionario), :notice => 'Funcionário Devolvido ao NUPES'
end

def verifica_lotacao
  @funcionario = Funcionario.find(params[:funcionario_id])
  @escola = Escola.find(params[:escola_id])
  @lotacao = Lotacao.verifica(@funcionario.id,@escola.id).first
  if @lotacao
    render :partial=>"verifica_lotacao"
  else
    render :partial=>"form"
  end
end



def devolver_funcionario
  @funcionario = Funcionario.find(params[:funcionario_id])
  @lotacao = Lotacao.finalizada.find(params[:lotacao_id])
  render :layout=>"lotacoes2"
end

def confirmar_lotacao
  @funcionario = Funcionario.find(params[:funcionario_id])
  @lotacao = Lotacao.em_aberto.find(params[:lotacao_id])
  render :layout=>"lotacoes2"
end

def cancelar_lotacao
  if params[:convalidar]
    @cancelar = params[:convalidar]
  end
  @funcionario = Funcionario.find(params[:funcionario_id])
  @lotacao = Lotacao.em_aberto.find(params[:lotacao_id])
  render :layout=>"lotacoes2"
end

def convalidar
 @lotacao_aberta = Lotacao.em_aberto.a_convalidar.find :all
 respond_to do |format|
  format.html # index.html.erb
end
end


# GET /lotacaos/new
# GET /lotacaos/new.xml
def new
  @lotacao = Lotacao.new
  @lotacao_aberta = Lotacao.em_aberto.last
  respond_to do |format|
    format.html # new.html.erb
    format.xml  { render :xml => @lotacao }
  end
end

# GET /lotacaos/1/edit
def edit
  @lotacao = Lotacao.find(params[:id])
end

# POST /lotacaos
# POST /lotacaos.xml
def create
  @lotacao = Lotacao.new(params[:lotacao])
  if params[:lotacao][:tipo_destino_id].nil? and params[:lotacao][:orgao_id].nil?
    if params[:escola][:nome_da_escola]
     @escola = Escola.find_by_nome_da_escola(params[:escola][:nome_da_escola])
     @lotacao.escola_id = @escola.id
   end
 elsif !params[:lotacao][:tipo_destino_id].nil? and params[:escola].nil?
  if params[:departamento][:nome]
   @departamento = Departamento.find_by_nome(params[:departamento][:nome])
   @lotacao.departamento_id = @departamento.id
 end
elsif !params[:lotacao][:tipo_destino_id].nil? and !params[:escola].nil?
  if params[:escola][:nome_da_escola]
   @escola = Escola.find_by_nome_da_escola(params[:escola][:nome_da_escola])
   @lotacao.escola_id = @escola.id
 end
end
respond_to do |format|
  if @lotacao.save
    format.html { redirect_to(pessoa_funcionario_lotacoes_path(@pessoa,@funcionario), :notice => "O Funcionário foi lotado com sucesso.
      Destino: #{dest(@lotacao)}") }
      format.xml  { render :xml => @lotacao, :status => :created, :location => @lotacao }
    else
      html="<ul>"
      @lotacao.errors.each do |atributo,msg|
        html+="<li>#{msg}</li>"
      end
      html+="</ul>"

      format.html { redirect_to(pessoa_funcionario_lotacoes_path(@pessoa,@funcionario), :alert => "Lotação não Efetuada, Motivos: #{html}") }
      format.xml  { render :xml => @lotacao.errors, :status => :unprocessable_entity }
    end
  end
end

# PUT /lotacaos/1
# PUT /lotacaos/1.xml
def update
  @lotacao = Lotacao.find(params[:id])
respond_to do |format|
  if @lotacao.update_attributes(params[:lotacao])
    if params[:lotacao][:ambiente_id].nil?
    format.html { redirect_to(pessoa_funcionario_lotaco_url(@funcionario), :notice => 'Processo de lotação criado com sucesso.') }
    format.xml  { head :ok }
  elsif !params[:lotacao][:ambiente_id].nil?
    format.html { redirect_to(pessoas_url, :notice => 'Processo de lotação criado com sucesso.') }
    format.xml  { head :ok }
  end
  else
    format.html { render :action => "edit" }
    format.xml  { render :xml => @lotacao.errors, :status => :unprocessable_entity }
  end
end
end



def fator_lotacao
  @funcionario = Funcionario.find(params[:funcionario_id])
  @turma = Turma.find params[:turma_id]
  @escola = @turma.escola
  @serie = @turma.serie
  @lotacao = Lotacao.find(params[:lotaco_id])
  @disciplina = @serie.disciplinas.find params[:disciplina_id]
  @curriculo = @turma.matriz.curriculos.da_serie(@serie.id).da_disciplina(@disciplina.id).last
  @fator = @disciplina.pode_especificar?(@turma)
  @fator_n = @disciplina.fator(@turma)
  if @fator
    if @funcionario.regencia_semanal_nominal_sobra>0
     @motivo="Regência Semanal Compatível"
     render :partial=>"fator_lotacao"
   else
     @motivo="Regência Semanal Incompatível"
     render :partial=>"nao_pode_especificar"
   end
 else
  @motivo="A Disciplína não Dispõe de Fator de Lotação"
  render :partial=>"nao_pode_especificar"
end
end



def fator_lotacao_fisico
  @funcionario = Funcionario.find(params[:funcionario_id])
  @lotacao = Lotacao.find(params[:lotacao_id])
  @lotacao.escola
  if @funcionario.regencia_semanal_nominal_sobra>0
     @motivo="Regência Semanal Compatível"
     render :partial=>"fator_lotacao"
   else
     @motivo="Regência Semanal Incompatível"
     render :partial=>"nao_pode_especificar"
   end
 end




# DELETE /lotacaos/1
# DELETE /lotacaos/1.xml
def destroy
  @lotacao = Lotacao.find(params[:id])
  @lotacao.destroy

  respond_to do |format|
    format.html { redirect_to(pessoa_funcionario_lotacoes_url) }
    format.xml  { head :ok }
  end
end
private
def funcionario
  @funcionario = Funcionario.find_by_slug(params[:funcionario_id])
  @pessoa = Pessoa.find_by_slug (params[:pessoa_id])
  @escolas = Escola.all.collect{|p| [p.nome_da_escola,p.id]}
end

def dest(lotacao)
  if lotacao
   if lotacao.tipo_lotacao=="ESPECIAL" and !lotacao.departamento.nil? and lotacao.escola.nil?
    return "#{lotacao.departamento.nome}/#{lotacao.orgao.sigla}"
  elsif lotacao.tipo_lotacao=="ESPECIAL" and !lotacao.escola.nil?
    return "#{lotacao.escola.nome_da_escola}/#{lotacao.orgao.sigla}"
  elsif lotacao.tipo_lotacao=="SUMARIA ESPECIAL" and !lotacao.departamento.nil? and lotacao.escola.nil?
    return "#{lotacao.departamento.nome}/#{lotacao.orgao.sigla}"
  elsif lotacao.tipo_lotacao=="SUMARIA ESPECIAL"  and !lotacao.escola.nil? and lotacao.departamento.nil?
    return "#{lotacao.escola.nome_da_escola}/#{lotacao.orgao.sigla}"
  elsif lotacao.tipo_lotacao=="ESPECIAL" and lotacao.escola.nil? and !lotacao.orgao.nil? and lotacao.departamento.nil?
    return "#{lotacao.orgao.nome}"
  elsif lotacao.tipo_lotacao=="SUMARIA ESPECIAL" and lotacao.escola.nil? and !lotacao.orgao.nil? and lotacao.departamento.nil?
    return "#{lotacao.orgao.nome}"
  else
    return "#{lotacao.escola.nome_da_escola}"

  end
end
end
end