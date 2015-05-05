# -*- encoding : utf-8 -*-
class CreateDescricaoCargos < ActiveRecord::Migration
  def self.up
    create_table :descricao_cargos do |t|
      t.string :codigo
      t.string :nome
      t.integer :tipo_id
      t.integer :nivel_cargo_id
      t.string :tipo
      t.string :nivel_cargo


      t.timestamps
    end
  end

  def self.down
    drop_table :descricao_cargos
  end
end

