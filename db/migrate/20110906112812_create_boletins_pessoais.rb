# -*- encoding : utf-8 -*-
class CreateBoletinsPessoais < ActiveRecord::Migration
  def self.up
    create_table :boletins_pessoais do |t|
  
      t.integer :pessoa_id
      t.string :mes
      t.string :ano
      t.string :folha
      t.string :tipo, :limit=>1
      t.timestamps
    end
  end

  def self.down
    drop_table :boletins_pessoais
  end
end

