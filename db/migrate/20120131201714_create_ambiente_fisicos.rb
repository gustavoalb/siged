# -*- encoding : utf-8 -*-
class CreateAmbienteFisicos < ActiveRecord::Migration
  def self.up
    create_table :ambiente_fisicos do |t|
      t.integer :ambiente_id
      t.integer :matriz_id
      t.integer :serie_id
      t.string :turno
      t.integer :escola_id
      t.integer :entidade_id
      t.string  :tipo_ambiente

      t.timestamps
    end
  end

  def self.down
    drop_table :ambiente_fisicos
  end
end

