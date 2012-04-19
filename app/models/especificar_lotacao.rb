class EspecificarLotacao < ActiveRecord::Base
	#default_scope where('especificar_lotacaos.entidade_id in (?)',User.usuario_atual.entidade_ids)
	set_table_name :especificar_lotacaos
	belongs_to :funcionario
	belongs_to :entidade
	belongs_to :turma
	scope :da_escola,lambda{|escola| where("escola_id=?",escola)}
	scope :da_turma,lambda{|turma| where("especificar_lotacaos.turma_id=?",turma)}
	validates_uniqueness_of :funcionario_id,:scope=>[:escola_id, :turma_id, :disciplina_id, :hora_semanal]

	TIPO=[
		["Sala Ambiente","SALA AMBIENTE"]
	]
end
