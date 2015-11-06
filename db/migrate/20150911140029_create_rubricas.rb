# -*- encoding : utf-8 -*-
class CreateRubricas < ActiveRecord::Migration
  def self.up
    create_table :rubricas do |t|
      t.string :nome
      t.integer :codigo

      t.timestamps
    end
  end

  def self.down
    drop_table :rubricas
  end
end
