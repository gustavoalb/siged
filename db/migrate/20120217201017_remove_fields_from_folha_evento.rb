# -*- encoding : utf-8 -*-
class RemoveFieldsFromFolhaEvento < ActiveRecord::Migration
	def self.up
		remove_column :folha_eventos, :incide_previdencia
		remove_column :folha_eventos, :incide_imposto_renda
		add_column :folha_eventos,:ps_ativo, :boolean,:default=>false
		add_column :folha_eventos,:ir_ativo, :boolean,:default=>false
		add_column :folha_eventos,:fg_ativo, :boolean,:default=>false
		add_column :folha_eventos,:dt_ativo, :boolean,:default=>false
		add_column :folha_eventos,:ps_inativo, :boolean,:default=>false
		add_column :folha_eventos,:ir_inativo, :boolean,:default=>false
		add_column :folha_eventos,:dt_inativo, :boolean,:default=>false
		add_column :folha_eventos,:sequencia,:integer
		add_column :folha_eventos,:intervalo,:string


	end

	def self.down
		add_column :folha_eventos, :incide_previdencia,:boolean,:default=>false
		add_column :folha_eventos, :incide_imposto_renda,:default=>false
		remove_column :folha_eventos,:ps_ativo
		remove_column :folha_eventos,:ir_ativo
		remove_column :folha_eventos,:fg_ativo
		remove_column :folha_eventos,:dt_ativo
		remove_column :folha_eventos,:ps_inativo
		remove_column :folha_eventos,:ir_inativo
		remove_column :folha_eventos,:dt_inativo
		remove_column :folha_eventos,:sequencia
		remove_column :folha_eventos,:intervalo
	end
end

