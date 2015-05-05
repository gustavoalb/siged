# -*- encoding : utf-8 -*-
class CreateSettings < ActiveRecord::Migration
  def self.up
    create_table :settings do |t|
      t.integer :escola_id,:references=>:escolas
      t.integer :objeto_id
      t.string :tipo_config
      t.datetime :data
      t.boolean :ativo,:default=>true
      t.integer :temporaridade
      t.string :tipo_temporaridade
      t.boolean :finalizado,:default=>false

      t.timestamps
    end
  end

  def self.down
    drop_table :settings
  end
end

