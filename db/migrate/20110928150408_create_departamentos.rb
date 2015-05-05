# -*- encoding : utf-8 -*-
class CreateDepartamentos < ActiveRecord::Migration
  def self.up
    create_table :departamentos do |t|
      t.string :nome
      t.string :sigla
      t.integer :orgao_id

      t.timestamps
    end
  end

  def self.down
    drop_table :departamentos
  end
end

