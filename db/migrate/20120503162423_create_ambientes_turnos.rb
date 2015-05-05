# -*- encoding : utf-8 -*-
class CreateAmbientesTurnos < ActiveRecord::Migration
	def self.up
		create_table :ambientes_turnos,:id=>false do |t|
			t.references :turno,:ambiente
		end
	end

	def self.down
		drop_table :ambientes_turnos
	end
end

