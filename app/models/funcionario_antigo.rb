class FuncionarioAntigo < ActiveRecord::Base
	self.abstract_class = true
	self.establish_connection "antigo"
	set_table_name "funcionarios"
	has_many :lotacoes,:class_name=>"LotacaoAntiga",:foreign_key=>"funcionario_id"
end