class Folha::Financeiro < ActiveRecord::Base
	include ScopedSearch::Model
	scope :busca, lambda { |q| where("funcionario_id = ?" ,"%#{q}%") }
	belongs_to :funcionario
	belongs_to :evento
	belongs_to :folha
	before_create :calcular
	validates_presence_of :valor,:funcionario_id,:evento_id
	validates_uniqueness_of :codigo_alt,:scope=>[:evento_id,:mes,:ano,:funcionario_id,:sequencia]
	validates_length_of :sequencia, :minimum=>1,:maximum=>1

	scope :da_folha, lambda {|folha|where("folha_id = ?",folha) }

	before_create :log_create
	#before_update :codigo_alt_u

	private

	validate do |financeiro|
		if self.sequencia >=1 and self.sequencia<=4 and !self.valor.blank? and self.parametro.blank?
			financeiro.errors.add_to_base("Sequências entre 1 e 4 não recebem valor, mas requerem um parâmetro.")
		elsif self.sequencia==0 and !self.valor.blank? and !self.parametro.blank?
			financeiro.errors.add_to_base("Sequências 0 não recebem valor nem parâmetro, apenas fórmula")
		end
	end

		validate do |financeiro|
		if self.funcionario.fonte_recurso_id!=self.folha.fonte_recurso_id
			financeiro.errors.add_to_base("O funcionário pertence não pertence a esta folha.")
		end
	end



	def log_create
		texto = "Mês: #{self.mes}, ano:#{self.ano}, funcionário: #{self.funcionario.pessoa.nome}"
		texto+=" Rubrica: #{self.evento.codigo},valor: #{self.valor}"
		if self.codigo_alt=="I"
			tipo="Tipo: Inclusão"
		elsif self.codigo_alt=="A"
			tipo="Tipo: Inclusão"
		elsif self.codigo_alt=="R"
			tipo="Tipo: Exclusão"
		end
		Administracao::Log.logger(texto,User.usuario_atual,tipo)
	end

	def codigo_alt_u
		self.codigo_alt = "A"
	end

	def calcular
		funcionario = self.funcionario
		if self.valor==0.0 and self.parametro>0
			self.valor=(self.parametro*funcionario.nivel.vencimento.valor)/100
		end
	end
end
