# -*- encoding : utf-8 -*-
class AddTipoToCargos < ActiveRecord::Migration
  def self.up
    add_column :cargos, :tipo, :string
  end

  def self.down
    remove_column :cargos, :tipo
  end
end

