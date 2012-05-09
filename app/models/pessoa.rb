class Pessoa < ActiveRecord::Base
  extend FriendlyId
  friendly_id :nome, :use=> :slugged

	default_scope where('pessoas.entidade_id in (?)',User.usuario_atual.entidade_ids)
	include ScopedSearch::Model
	validates_uniqueness_of :cpf,:on=>:create
	#validates_presence_of :nome,:endereco,:sexo,:cpf,:rg,:numero,:bairro,:cidade_id,:uf,:titulo_eleitor,:zona_eleitoral,:secao,:message=>"Não pode ficar em branco!"
	validates_uniqueness_of :nome,:scope => [:entidade_id,:cpf,:rg],:message=>"já cadastrado",:on=>:create
	#scoped_search
	has_many :listas
	has_many :fotos
	belongs_to :cidade
	scope :busca, lambda { |q| where("cpf like ? or rg like ? or nome iLIKE ?" ,"%#{q.downcase}%","%#{q.downcase}%","%#{q.downcase}%") }
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

	before_save :converter_cpf
	before_update :converter_cpf
	SEXO=[["Masculino","Masculino"],["Feminino","Feminino"]]
	NATURALIDADES=[
		['ACRIANO','Acre'],
		['ALAGOANO','Alagoas'],
		['AMAPAENSE','Amapa'],
		['AMAZONENSE','Amazonas'],
		['BAIANO','Bahia'],
		['CEARENSE','Ceara'],
		['ESPÍRITO-SANTENSE','Espirito Santo'],
		['GOIANO','Goias'],
		['MARANHENSE','Maranhao'],
		['MATO-GROSSENSE','Mato Grosso'],
		['MATO-GROSSENSE-DO-SUL','Mato Grosso do Sul'],
		['MINEIRO','Minas Gerais'],
		['PARAENSE','Para'],
		['PARAIBANO','Paraiba'],
		['PARANAENSE','Prana'],
		['PERNAMBUCANO','Pernambuco'],
		['PIAUIENSE','Piaui'],
		['FLUMINENSE','Rio de Janeiro'],
		['POTIGUAR','Rio Grande do Norte'],
		['GAÚCHO','Rio Grande do Sul'],
		['RONDONIANO','Rondonia'],
		['RORAIMENSE','Roraima'],
		['CATARINENSE','Santa Catarina'],
		['PAULISTA','Sao Paulo'],
		['SERGIPANO','Sergipe'],
		['TOCANTINENSE','Tocantins']
	]

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
	def converter_cpf
		cpf = self.cpf
		self.cpf = cpf.to_s.gsub(".","").gsub("-","")
	end


	private

end
