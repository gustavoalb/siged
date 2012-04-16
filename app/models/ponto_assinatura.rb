class PontoAssinatura < ActiveRecord::Base
	#default_scope where('entidade_id in (?)',User.usuario_atual.entidade_ids)
	belongs_to :ponto_diario
	belongs_to :entidade
	scope :do_ano,lambda {|ano|where("ano=?",ano) }
	scope :do_mes,lambda {|mes|where("mes=?",mes) }
	scope :do_dia,lambda {|dia|where("dia=?",dia) }
	scope :do_tipo,lambda{|tipo|where("tipo=?",tipo)}
end
