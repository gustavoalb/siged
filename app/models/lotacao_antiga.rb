class LotacaoAntiga < ActiveRecord::Base
	self.abstract_class = true
	self.establish_connection "antigo"
	set_table_name "lotacaos"
	belongs_to :funcionario,:class_name=>"FuncionarioAntigo",:foreign_key=>"funcionario_id"
	scope :inativo, where("ativo = ?",false)
	scope :ativo, where("ativo = ?",true)
end