class FinanceiroFixo < ActiveRecord::Base
	#default_scope where('entidade_id in (?)',User.usuario_atual.entidade_ids)
	belongs_to :entidade
end
