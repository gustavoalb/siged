# -*- encoding : utf-8 -*-
class RenameDescricaoCargoId < ActiveRecord::Migration
	def self.up
		rename_column :funcionarios,:descricao_cargo_id,:disciplina_contratacao_id
	end

	def self.down
		rename_column :funcionarios,:disciplina_contratacao_id,:descricao_cargo_id
	end
end

