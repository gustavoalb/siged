class PontoDiario < ActiveRecord::Base
	default_scope where('entidade_id in (?)',User.usuario_atual.entidade_ids)
	belongs_to :ponto
	belongs_to :entidade
	has_many :ponto_assinaturas
	scope :do_mes,lambda {|mes|where("EXTRACT(MONTH FROM data_assinatura)=?",mes) }
	scope :do_ano,lambda {|ano|where("EXTRACT(YEAR FROM data_assinatura)=?",ano) }


	after_create :criar_dias

	private

	def criar_dias
		dias = self.ponto.data.at_beginning_of_month..self.ponto.data.at_end_of_month
		dias.each do |d|
			self.ponto_assinaturas.create(:tipo=>"ENTRADA_MANHA", :dia=>d.day, :mes=>d.month, :ano=>d.year)
			self.ponto_assinaturas.create(:tipo=>"SAIDA_MANHA", :dia=>d.day, :mes=>d.month, :ano=>d.year)
			self.ponto_assinaturas.create(:tipo=>"ENTRADA_TARDE", :dia=>d.day, :mes=>d.month, :ano=>d.year)
			self.ponto_assinaturas.create(:tipo=>"SAIDA_TARDE", :dia=>d.day, :mes=>d.month, :ano=>d.year)
		end
	end
end
