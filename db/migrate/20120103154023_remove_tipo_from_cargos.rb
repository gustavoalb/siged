# -*- encoding : utf-8 -*-
class RemoveTipoFromCargos < ActiveRecord::Migration
  def self.up
    remove_column :cargos, :tipo
  end

  def self.down
    add_column :cargos, :tipo, :string
  end
end

