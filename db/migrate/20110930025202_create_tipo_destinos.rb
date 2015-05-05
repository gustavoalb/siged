# -*- encoding : utf-8 -*-
class CreateTipoDestinos < ActiveRecord::Migration
  def self.up
    create_table :tipo_destinos do |t|
      t.string :nome

      t.timestamps
    end
  end

  def self.down
    drop_table :tipo_destinos
  end
end

