# -*- encoding : utf-8 -*-
class CreateReferenciaNiveis < ActiveRecord::Migration
  def self.up
    create_table :referencia_niveis do |t|
      t.string :nome
      t.string :codigo
      t.integer :vencimento_id

      t.timestamps
    end
  add_index :referencia_niveis,:nome
  add_index :referencia_niveis,:codigo
  end

  def self.down
    drop_table :referencia_niveis
  end
end

