# -*- encoding : utf-8 -*-
class DiretorAdjunto < Funcionario
	belongs_to :escola
	default_scope joins(:comissionados).where("comissionados.ativo=? and comissionados.tipo=?",true,'DIRETORIAADJUNTA')
	scope  :sem_escola,where(:escola_id=>nil)

	
end

