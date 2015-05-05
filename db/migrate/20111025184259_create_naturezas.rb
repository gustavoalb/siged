# -*- encoding : utf-8 -*-
class CreateNaturezas < ActiveRecord::Migration
  def self.up
    create_table :naturezas do |t|
      t.string :nome
      t.boolean :ativo,:default=>true

      t.timestamps
    end
  end

  def self.down
    drop_table :naturezas
  end
end

