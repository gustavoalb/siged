# -*- encoding : utf-8 -*-
class CreateLista < ActiveRecord::Migration
  def self.up
    create_table :listas do |t|
      t.integer :funcionario_id
      t.integer :pessoa_id
      t.date :data_inclusao
      t.integer :tipo_lista_id
      t.text :motivo
      t.boolean :ativo,:default=>true

      t.timestamps
    end
  end

  def self.down
    drop_table :listas
  end
end

