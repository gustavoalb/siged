# -*- encoding : utf-8 -*-
class CreateMatrizesEscolas < ActiveRecord::Migration
	def self.up
		create_table :escolas_matrizes, :id => false do |t|
			t.references :escola,:matriz

		end
	end

		def self.down
			drop_table :escolas_matrizes
		end
	end

