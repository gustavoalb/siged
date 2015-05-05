# -*- encoding : utf-8 -*-
class CreateFolhas < ActiveRecord::Migration
  def self.up
    create_table :folhas do |t|
      t.string :codigo
      t.string :nome
      t.integer :esfera_id
      t.integer :poder_id

      t.timestamps
    end
  end

  def self.down
    drop_table :folhas
  end
end

