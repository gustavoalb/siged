class Responsavel < Funcionario
	
	has_one :departamento
	belongs_to :entidade
	default_scope joins(:comissionados).where("comissionados.ativo=? and comissionados.tipo=?",true,'CHEFIA')

	
end
