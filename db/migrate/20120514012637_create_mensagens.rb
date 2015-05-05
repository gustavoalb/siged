# -*- encoding : utf-8 -*-
class CreateMensagens < ActiveRecord::Migration
  def self.up
    create_table :mensagens do |t|
      t.integer :usuario_id
      t.integer :destinatario_id
      t.text :texto
      t.boolean :aviso,:default=>false

      t.timestamps
    end
  end

  def self.down
    drop_table :mensagens
  end
end

