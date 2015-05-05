# -*- encoding : utf-8 -*-
class CreateAmbientes < ActiveRecord::Migration
  def self.up
    create_table :ambientes do |t|
      t.string :nome
      t.integer :tipo_ambiente_id
      t.boolean :ativo,:default=>true
      t.integer :escola_id,:references=>:escolas

      t.timestamps
    end
  end

  def self.down
    drop_table :ambientes
  end
end

