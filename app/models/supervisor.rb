class Supervisor < Funcionario
	belongs_to :escola
	default_scope joins(:comissionados).where("comissionados.ativo=? and comissionados.tipo=?",true,'SUPERVISAO')
	

	
end
