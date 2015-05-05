# -*- encoding : utf-8 -*-
class CreateFotos < ActiveRecord::Migration
  def self.up
    create_table :fotos do |t|
      t.integer :pessoa_id
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :fotos
  end
end

