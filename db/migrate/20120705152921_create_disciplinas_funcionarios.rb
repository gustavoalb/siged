# -*- encoding : utf-8 -*-
class CreateDisciplinasFuncionarios < ActiveRecord::Migration
	def self.up
		create_table :disciplinas_funcionarios,:id=>false do |t|
			t.references :disciplina,:funcionario
			t.integer :disciplina_contratacao_id
		end
	end

	def self.down
		drop_table :disciplinas_funcionarios
	end
end

