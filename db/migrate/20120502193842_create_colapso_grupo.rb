# -*- encoding : utf-8 -*-
class CreateColapsoGrupo < ActiveRecord::Migration
	def self.up
		create_table :colapso_grupo, :id => false do |t|
			t.references :grupo_educacional,:funcionario
			t.references :grupo_educacional,:user

		end
	end

		def self.down
			drop_table :colapso_grupo
		end
	end

