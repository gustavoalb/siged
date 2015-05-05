# -*- encoding : utf-8 -*-
class CreateCategoriaEnsinos < ActiveRecord::Migration
  def self.up
    create_table :categoria_ensinos do |t|
      t.string :nome

      t.timestamps
    end
  end

  def self.down
    drop_table :categoria_ensinos
  end
end

