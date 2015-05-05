# -*- encoding : utf-8 -*-
class CreateQuadros < ActiveRecord::Migration
  def self.up
    create_table :quadros do |t|
      t.string :codigo
      t.string :nome
      t.string :esfera_id

      t.timestamps
    end
  end

  def self.down
    drop_table :quadros
  end
end

