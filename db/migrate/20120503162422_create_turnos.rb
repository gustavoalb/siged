# -*- encoding : utf-8 -*-
class CreateTurnos < ActiveRecord::Migration
  def self.up
    create_table :turnos do |t|
      t.string :nome
      t.timestamps
    end
  end

  def self.down
    drop_table :turnos
  end
end

