# -*- encoding : utf-8 -*-
class CreateCarencias < ActiveRecord::Migration
  def self.up
    create_table :carencias do |t|
      t.integer :escola_id
      t.integer :disciplina_id
      t.string :status
      t.date :data

      t.timestamps
    end
  end

  def self.down
    drop_table :carencias
  end
end

