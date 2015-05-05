# -*- encoding : utf-8 -*-
class AddJornadaToReferenciaNivel < ActiveRecord::Migration
  def self.up
    add_column :referencia_niveis, :jornada, :integer
  end

  def self.down
    remove_column :referencia_niveis, :jornada
  end
end

