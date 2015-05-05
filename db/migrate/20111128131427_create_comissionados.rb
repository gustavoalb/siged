# -*- encoding : utf-8 -*-
class CreateComissionados < ActiveRecord::Migration
  def self.up
    create_table :comissionados do |t|
      t.integer :funcionario_id
      t.string :tipo,:LIMIT=>15
      t.date :data
      t.text :motivo
      t.string :decreto
      t.date :data_publicacao
      t.integer :orgao_id
      t.string :descricao_comissao
      t.boolean :valido
      t.integer :comissionado_id
      t.timestamps
    end
  end

  def self.down
    drop_table :comissionados
  end
end


