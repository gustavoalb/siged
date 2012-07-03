class Funcionario < ActiveRecord::Base
  extend FriendlyId
  friendly_id :matricula, :use=> :slugged
  #default_scope where('funcionarios.entidade_id in (?)',User.usuario_atual.entidade_ids)
  #validates_presence_of  :cargo_id, :orgao_id,:matricula,:descricao_cargo_id,:sjuridica_id,:message=>"Não pode ficar em branco!"
  validates_uniqueness_of :matricula,:message=>"já existente",:on=>:create
  #scoped_search
  include ScopedSearch::Model
  scope :busca, lambda { |q| where("matricula like ?" ,"%#{q}%") }
  scope :da_pessoa, lambda {|id|where("pessoa_id = ?",id) }
  scope :do_func, lambda {|id|where("funcionario_id = ?",id) }
  scope :diretores, lambda { |q| where("diretor = ?" , true) }
  scope :disciplina_def, where("disciplina_contratacao_id is not ?",nil)
  scope :da_entidade, lambda {|id|where("funcionarios.entidade_id = ?",id) }


  #has_and_belongs_to_many :grupos_educacionais,:class_name=>"GrupoEducacional",:join_table=>:colapso_grupo
  belongs_to :pessoa,:class_name=>'Pessoa'
  belongs_to :quadro
  belongs_to :cargo
  belongs_to :folha,:class_name=>"Folha::Folha"
  belongs_to :orgao
  belongs_to :municipio
  belongs_to :distrito
  belongs_to :processo
  belongs_to :entidade
  has_one :user,:dependent=>:destroy
  belongs_to :fonte_recurso,:class_name=>"Folha::FonteRecurso"
  has_many :listas
  has_many :pontos
  #has_many :ponto_diarios
  has_many :funcoes_comissionadas,:class_name=>"Processo"
  has_many :pontos_do_mes,:class_name=>"Ponto",:conditions=>["EXTRACT(MONTH FROM data)=? and EXTRACT(YEAR FROM data)=?",Time.now.month,Time.now.year]
  belongs_to :disciplina_contratacao
  has_many :comissionados
  belongs_to :gaveta,:class_name=>"Arquivo"
  belongs_to :nivel, :class_name=>'ReferenciaNivel'
  belongs_to :sjuridica,:class_name=>'SituacoesJuridica'
  belongs_to :categoria
  has_many :lotacoes,:class_name=>"Lotacao",:dependent=>:destroy
  has_many :lotacoes_atuais,:class_name=>"Lotacao",:conditions=>["finalizada = ? and ativo = ? and complementar = ?",true,true,false]
  has_many :processos,:dependent=>:nullify
  has_many :boletins, :class_name=>"BoletimFuncional",:dependent=>:nullify
  has_many :especificacoes,:class_name=>"EspecificarLotacao",:conditions=>{:ativo=>true},:dependent => :destroy
  scope :direcao, joins(:comissionados).where("comissionados.ativo=? and comissionados.tipo=?",true,'DIRETORIA')
  after_create :criar_comissionado
  attr_accessor_with_default(:nome) {pessoa.nome}
  attr_accessor_with_default(:rsn) {self.regencia_semanal_nominal}
  attr_accessor_with_default(:rsd) {self.regencia_semanal_disponivel  }


 #after_update :criar_comissionado

 def aposentadoria
  self.data_nomeacao.months_since(300)
end

  #def quinquenio
  #  a = 0
  #case
  #when self.data_nomeacao.months_since(60)<Date.today
  #  a = a+1
  #end
  #return a
  #end

  def quinquenio
    self.data_nomeacao.months_since(60)
  end

  JORNADA=[["20 horas","20"],["40 horas","40"]]
  BANCO=[
    ['Banco do Brasil S.A.','Banco do Brasil S.A.'],
    ['Banco ABC Brasil S.A.','Banco ABC Brasil S.A.'],
    ['Banco Alfa S.A.','Banco Alfa S.A.'],
    ['Banco Alvorada S.A.','Banco Alvorada S.A.'],
    ['Banco Banerj S.A.','Banco Banerj S.A.'],
    ['Banco Bankpar S.A.','Banco Bankpar S.A.'],
    ['Banco Barclays S.A.','Banco Barclays S.A.'],
    ['Banco BBM S.A.','Banco BBM S.A.'],
    ['Banco Beg S.A.','Banco Beg S.A.'],
    ['Banco BGN S.A.','Banco BGN S.A.'],
    ['Banco BMG S.A.','Banco BMG S.A.'],
    ['Banco BNP Paribas Brasil S.A.','Banco BNP Paribas Brasil S.A.'],
    ['Banco Bonsucesso S.A.','Banco Bonsucesso S.A.'],
    ['Banco Bracce S.A.','Banco Bracce S.A.'],
    ['Banco Bradesco BBI S.A.','Banco Bradesco BBI S.A.'],
    ['Banco Bradesco Cartões S.A.','Banco Bradesco Cartões S.A.'],
    ['Banco Bradesco S.A.','Banco Bradesco S.A.'],
    ['Banco Brascan S.A.','Banco Brascan S.A.'],
    ['Banco BTG Pactual S.A.','Banco BTG Pactual S.A.'],
    ['Banco BVA S.A.','Banco BVA S.A.'],
    ['Banco Cacique S.A.','Banco Cacique S.A.'],
    ['Banco Caixa Geral - Brasil S.A.','Banco Caixa Geral - Brasil S.A.'],
    ['Banco Cargill S.A.','Banco Cargill S.A.'],
    ['Banco Citibank S.A.','Banco Citibank S.A.'],
    ['Banco Citicard S.A.','Banco Citicard S.A.'],
    ['Banco CNH Capital S.A.','Banco CNH Capital S.A.'],
    ['Banco Cooperativo Sicredi S.A.','Banco Cooperativo Sicredi S.A.'],
    ['Banco Credit Agricole Brasil S.A.','Banco Credit Agricole Brasil S.A.'],
    ['Banco Credit Suisse (Brasil) S.A.','Banco Credit Suisse (Brasil) S.A.'],
    ['Banco Cruzeiro do Sul S.A.','Banco Cruzeiro do Sul S.A.'],
    ['Banco da Amazônia S.A.','Banco da Amazônia S.A.'],
    ['Banco Daycoval S.A.','Banco Daycoval S.A.'],
    ['Banco de Lage Landen Brasil S.A.','Banco de Lage Landen Brasil S.A.'],
    ['Banco de Pernambuco S.A. - BANDEPE','Banco de Pernambuco S.A. - BANDEPE'],
    ['Banco Dibens S.A.','Banco Dibens S.A.'],
    ['Banco do Estado de Sergipe S.A.','Banco do Estado de Sergipe S.A.'],
    ['Banco do Estado do Pará S.A.','Banco do Estado do Pará S.A.'],
    ['Banco do Nordeste do Brasil S.A.','Banco do Nordeste do Brasil S.A.'],
    ['Banco Fator S.A.','Banco Fator S.A.'],
    ['Banco Fiat S.A.','Banco Fiat S.A.'],
    ['Banco Fibra S.A.','Banco Fibra S.A.'],
    ['Banco Ficsa S.A.','Banco Ficsa S.A.'],
    ['Banco Ford S.A.','Banco Ford S.A.'],
    ['Banco GE Capital S.A.','Banco GE Capital S.A.'],
    ['Banco GMAC S.A.','Banco GMAC S.A.'],
    ['Banco Guanabara S.A.','Banco Guanabara S.A.'],
    ['Banco Honda S.A.','Banco Honda S.A.'],
    ['Banco Ibi S.A. Banco Múltiplo','Banco Ibi S.A. Banco Múltiplo'],
    ['Banco IBM S.A.','Banco IBM S.A.'],
    ['Banco Industrial do Brasil S.A.','Banco Industrial do Brasil S.A.'],
    ['Banco Industrial e Comercial S.A.','Banco Industrial e Comercial S.A.'],
    ['Banco Indusval S.A.','Banco Indusval S.A.'],
    ['Banco Investcred Unibanco S.A.','Banco Investcred Unibanco S.A.'],
    ['Banco Itaú BBA S.A.','Banco Itaú BBA S.A.'],
    ['Banco ItaúBank S.A','Banco ItaúBank S.A'],
    ['Banco Itaucred Financiamentos S.A.','Banco Itaucred Financiamentos S.A.'],
    ['Banco J. P. Morgan S.A.','Banco J. P. Morgan S.A.'],
    ['Banco J. Safra S.A.','Banco J. Safra S.A.'],
    ['Banco John Deere S.A.','Banco John Deere S.A.'],
    ['Banco Luso Brasileiro S.A.','Banco Luso Brasileiro S.A.'],
    ['Banco Mercantil do Brasil S.A.','Banco Mercantil do Brasil S.A.'],
    ['Banco Modal S.A.','Banco Modal S.A.'],
    ['Banco Opportunity S.A.','Banco Opportunity S.A.'],
    ['Banco Panamericano S.A.','Banco Panamericano S.A.'],
    ['Banco Paulista S.A.','Banco Paulista S.A.'],
    ['Banco Pine S.A.','Banco Pine S.A.'],
    ['Banco Prosper S.A.','Banco Prosper S.A.'],
    ['Banco Toyota do Brasil S.A.','Banco Toyota do Brasil S.A.'],
    ['Banco Triângulo S.A.','Banco Triângulo S.A.'],
    ['Banco Volkswagen S.A.','Banco Volkswagen S.A.'],
    ['Banco Volvo (Brasil) S.A.','Banco Volvo (Brasil) S.A.'],
    ['Banco Votorantim S.A.','Banco Votorantim S.A.'],
    ['Banco VR S.A.','Banco VR S.A.'],
    ['Banco WestLB do Brasil S.A.','Banco WestLB do Brasil S.A.'],
    ['BPN Brasil Banco Múltiplo S.A.','BPN Brasil Banco Múltiplo S.A.'],
    ['BRB - Banco de Brasília S.A.','BRB - Banco de Brasília S.A.'],
    ['Caixa Econômica Federal','Caixa Econômica Federal'],
    ['Citibank N.A.','Citibank N.A.'],

  ]

  FOLHA=[
    ["Estado-Fundeb"],
    ["Estado-Não Fundeb"],
    ["Federal-Fundeb"],
    ["Federal-não Fundeb"],
    ["Sem Vinculo-Fundeb"],
    ["Sem Vinculo-Não Fundeb"]
  ]

  TIPOCOMISSAO=[
    ['Diretoria','DIRETORIA'],
    ['Diretoria Ad.','DIRETORIA ADJUNTA'],
    ['Secretaria','SECRETARIA'],
    ['Chefia','CHEFIA'],
    ['Assessor Técnico Nivel I','ASSESSOR TECNICO NIVEL I'],
    ['Assessor Técnico Nivel II','ASSESSOR TÉCNICO NIVEL II'],
    ['Responsável pela Atividade Nivel I','RESPONSÁVEL PELA ATIVIDADE NIVEL I']
  ]

  def regencia_semanal_nominal
   carga = self.nivel.jornada.to_i
   case carga
   when 20 then rsn=12
   when 40 then rsn=24
   end
   return rsn
 end


 def regencia_semanal_disponivel
   horas = 0
   self.especificacoes.all.each do |e|
    if e.turma.nil? and !e.ambiente.nil?
      horas+=self.rsn 
    elsif !e.turma.nil?
      horas+=e.hora_semanal
    end
  end
  return self.rsn-horas
end


def especificar_lotacao(escola = nil,turma = nil,disciplina = nil,curriculo = nil,lotacao = nil,tipo = nil,ambiente = nil)
 l = self.especificacoes.new
 l.escola_id=escola.id
 l.lotacao_id=lotacao.id
 if tipo=="Sala de Aula"
   fator = disciplina.fator(turma)
   l.turma_id=turma.id
   l.disciplina_id=disciplina.id
   if fator <= self.rsd
    l.hora_semanal = fator
  elsif fator == self.rsd
    l.hora_semanal = self.rsd
  end
  if l.save
   disciplina.gerar_fator(turma,l.hora_semanal,turma.serie,curriculo,l)
   return true
 else
  return false
end
elsif tipo=="Sala Ambiente"
  l.ambiente_id = ambiente.id
  if l.save!
    return true
  else
   return false
 end
end
end


def status_lotacao
  if !self.lotacoes.none?
    if !self.lotacoes.atual.none?
      if self.lotacoes.atual.last.status.last.status=="ENCAMINHADO"
        return "EM TRÂNSITO"
      elsif self.lotacoes.atual.last.status.last.status=="À DISPOSIÇÃO DO NUPES"
        return "À DISPOSIÇÃO DO NUPES"
      elsif self.lotacoes.atual.last.status.last.status=="CANCELADO"
        return "À DISPOSIÇÃO DO NUPES"
      elsif self.lotacoes.atual.last.status.last.status=="LOTADO"
        return "LOTADO"
      end
    else
      return "À DISPOSIÇÃO DO NUPES"
    end
  end
else
  return "NÃO LOTADO"
end


def fator_de_lotacao

end


def ids_disciplinas
  disciplinas=[]
  if !self.disciplina_contratacao.nil?
    disc = self.disciplina_contratacao.disciplinas
    disc.each do |d|
      disciplinas.push d.id
    end
    return disciplinas
  end
end

private
def criar_comissionado
  processo = self.funcoes_comissionadas.new
  processo.tipo = "COMISSÃO"
  if self.cargo_em_comissao.to_s=="true"
    if self.tipo_comissao=="DIRETORIA"
      processo.natureza="COMISSÃO/DIRETORIA"
      if self.tipo_comissao=="DIRETORIA ADJUNTA"
        processo.natureza="COMISSÃO/DIRETORIA"
      elsif self.tipo_comissao=="SECRETARIA"
        processo.natureza="COMISSÃO/SECRETARIA"
      elsif self.tipo_comissao=="CHEFIA"
        processo.natureza="COMISSÃO/CHEFIA"
        self.comissao_ativa=true
        self.save!
      end
      processo.funcionario_id=self.id
      processo.ano_processo=self.data_decreto_nomeacao.year
      processo.encaminhado_em=self.data_decreto_nomeacao
      processo.data_decreto_nomeacao=self.data_decreto_nomeacao
      processo.decreto_nomeacao=self.decreto_nomeacao
      if processo.save!
        num=processo.id
        cod=Num.new
        if self.tipo_comissao=="DIRETORIA"
          processo.processo="CD#{cod.numero(num)}/#{self.data_decreto_nomeacao.year}"
        elsif self.tipo_comissao=="SECRETARIA"
          processo.processo="CS#{cod.numero(num)}/#{self.data_decreto_nomeacao.year}"
        elsif self.tipo_comissao=="CHEFIA"
          processo.processo="CC#{cod.numero(num)}/#{self.data_decreto_nomeacao.year}"
        elsif self.tipo_comissao=="DIRETORIA ADJUNTA"
          processo.processo="CA#{cod.numero(num)}/#{self.data_decreto_nomeacao.year}"
        end
        processo.save!
      end
    end
  end
end






end
