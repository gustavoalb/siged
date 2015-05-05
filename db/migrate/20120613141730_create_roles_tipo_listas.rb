# -*- encoding : utf-8 -*-
class CreateRolesTipoListas < ActiveRecord::Migration
	def self.up
		create_table :roles_tipo_listas,:id=>false do |t|
			t.references :role,:tipo_lista
		end
	end

	def self.down
		drop_table :roles_tipo_listas
	end
end

