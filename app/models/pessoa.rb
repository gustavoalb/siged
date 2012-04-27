class Pessoa < ActiveRecord::Base
	extend FriendlyId
	friendly_id :nome, :use=> :slugged

	#default_scope where('pessoas.entidade_id in (?)',User.usuario_atual.entidade_ids)
	include ScopedSearch::Model
	validates_uniqueness_of :cpf,:on=>:create
	validates_presence_of :nome,:endereco,:sexo,:cpf,:rg,:numero,:bairro,:uf,:titulo_eleitor,:zona_eleitoral,:secao,:message=>"Não pode ficar em branco!"
	validates_uniqueness_of :nome,:scope => [:entidade_id,:cpf,:rg],:message=>"já cadastrado",:on=>:create
	#scoped_search
	has_many :listas
	has_many :fotos
	scope :busca,lambda { |q| includes(:funcionarios).where("pessoas.cpf like ? or funcionarios.matricula like ? or rg like ? or nome iLIKE ?" ,"%#{q.downcase}%","%#{q}%","%#{q.downcase}%","%#{q.downcase}%") }
	scope :em_aberto, where("nascimento = ?",nil)

	scope :que_esta_na_lista, joins(:listas).where("listas.tipo_lista_id=1")
	has_many :funcionarios,:class_name=>"Funcionario",:dependent=>:destroy
	accepts_nested_attributes_for :funcionarios
	belongs_to :entidade
	scope :diretores,lambda {joins(:funcionarios).where("funcionarios.id in(select funcionario_id from comissionados where comissionados.tipo='DIRETORIA' and comissionados.ativo=true)")}
	scope :responsaveis,lambda {joins(:funcionarios).where("funcionarios.id in(select funcionario_id from comissionados where comissionados.tipo='CHEFIA' and comissionados.ativo=true)")}
	scope :secretarios,lambda {joins(:funcionarios).where("funcionarios.id in(select funcionario_id from comissionados where comissionados.tipo='SECRETARIA' and comissionados.ativo=true)")}
	scope :supervisores,lambda {joins(:funcionarios).where("funcionarios.id in(select funcionario_id from comissionados where comissionados.tipo='SUPERVISAO' and comissionados.ativo=true)")}

	has_many :formacoes,:class_name=>"Formacao"
	has_many :boletins,:class_name=>"BoletimPessoal"

	before_save :converter_cpf,:nome_upcase
	SEXO=[["Masculino","Masculino"],["Feminino","Feminino"],["Outros","Outros"]]
	UF=[["AC"],["AL"],["AM"],["AP"],["BA"],
		["CE"],["DF"],["ES"],["GO"],["MA"],
		["MG"],["MS"],["MT"],["PA"],["PB"],
		["PE"],["PI"],["PR"],["RJ"],["RN"],
		["RO"],["RR"],["RS"],["SC"],["SE"],
		["SP"],["TO"]]

	NACION=[
		['Brasileiro (a)'],
		['Estrangeiro (a)']
	]

	ESTCIV=[
		['Solteiro (a)'],
		['Casado (a)'],
		['Divorciado (a)'],
		['União Estável','Uniao Estavel']
	]

	private
	def converter_cpf
		cpf = self.cpf
		self.cpf = cpf.to_s.gsub(".","").gsub("-","")
	end
	def nome_upcase
		self.nome = self.nome.upcase
	end

end
