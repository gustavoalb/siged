# -*- encoding : utf-8 -*-
class CreateManutencoes < ActiveRecord::Migration
  def self.up
    create_table :manutencoes do |t|
      t.integer :tempo
      t.string :tipo
      t.boolean :em_manutencao

      t.timestamps
    end
  end

  def self.down
    drop_table :manutencoes
  end
end

