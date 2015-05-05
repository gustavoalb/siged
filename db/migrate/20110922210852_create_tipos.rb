# -*- encoding : utf-8 -*-
class CreateTipos < ActiveRecord::Migration
  def self.up
    create_table :tipos do |t|
      t.string :nome

      t.timestamps
    end
  Tipo.create(:nome=>"Magistério")
  Tipo.create(:nome=>"Administrativo")
  Tipo.create(:nome=>"Militar")
  Tipo.create(:nome=>"Saúde")
  end

  def self.down
    drop_table :tipos
  end
end

