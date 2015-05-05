# -*- encoding : utf-8 -*-
class CreateEntidades < ActiveRecord::Migration
  def self.up
    create_table :entidades do |t|
      t.string :nome
      t.integer :esfera_id

      t.timestamps
    end
  end

  def self.down
    drop_table :entidades
  end
end

