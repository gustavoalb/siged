class EspecificarLotacao < ActiveRecord::Base
	#default_scope where('especificar_lotacaos.entidade_id in (?)',User.usuario_atual.entidade_ids)
	set_table_name :especificar_lotacaos
	belongs_to :funcionario
	belongs_to :entidade
	belongs_to :turma
	belongs_to :disciplina
	belongs_to :ambiente
	belongs_to :lotacao
	has_one :fator_lotacao,:class_name=>"FatorLotacao",:dependent=>:destroy
	scope :da_escola,lambda{|escola| where("escola_id=?",escola)}
	scope :do_ambiente,lambda{|amb| where("ambiente_id=?",amb)}
	scope :da_turma,lambda{|turma| where("especificar_lotacaos.turma_id=?",turma)}
	validates_uniqueness_of :funcionario_id,:scope=>[:escola_id, :turma_id, :disciplina_id]

	
end
