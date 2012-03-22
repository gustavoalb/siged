class ConfiguracaoPonto < ActiveRecord::Base
	default_scope where('entidade_id in (?)',User.usuario_atual.entidade_ids)
validates_presence_of :tipo_entrada_manha,:tipo_saida_manha,:tipo_entrada_tarde,:tipo_saida_tarde
TIPO=[["FIXO","FIXO"],["LIVRE","LIVRE"]]
end
