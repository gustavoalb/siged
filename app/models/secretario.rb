# -*- encoding : utf-8 -*-
class Secretario < Funcionario

	belongs_to :escola
	default_scope joins(:comissionados).where("comissionados.ativo=? and comissionados.tipo=?",true,'SECRETARIA')

end

