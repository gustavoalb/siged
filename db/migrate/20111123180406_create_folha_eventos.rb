# -*- encoding : utf-8 -*-
class CreateFolhaEventos < ActiveRecord::Migration
  def self.up
    create_table :folha_eventos do |t|
      t.string :codigo,:limit=>6
      t.string :nome,:limit=>30
      t.boolean :incide_previdencia,:default=>true
      t.boolean :incide_imposto_renda,:default=>true
      t.string :formula
      t.string :tipo,:limit=>1
      t.string :condigo_contabil,:limit=>15

      t.timestamps
    end
  end

  def self.down
    drop_table :folha_eventos
  end
end

