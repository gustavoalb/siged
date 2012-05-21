class Diretor < Funcionario
	belongs_to :escola
	default_scope joins(:comissionados).where("comissionados.ativo=? and comissionados.tipo=?",true,'DIRETORIA')
	scope  :sem_escola,where(:escola_id=>nil)
	has_one :usuario,:foreign_key=>'funcionario_id'
	
end
