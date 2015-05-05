# -*- encoding : utf-8 -*-
class CreateCargos < ActiveRecord::Migration
  def self.up
    create_table :cargos do |t|
      t.string :codigo
      t.string :nome

      t.timestamps
    end
   add_index :cargos, :codigo
   add_index :cargos,:nome
  end

  def self.down
    drop_table :cargos
  end
end

