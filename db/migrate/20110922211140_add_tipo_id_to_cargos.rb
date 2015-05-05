# -*- encoding : utf-8 -*-
class AddTipoIdToCargos < ActiveRecord::Migration
  def self.up
    add_column :cargos, :tipo_id, :integer
  end

  def self.down
    remove_column :cargos, :tipo_id
  end
end

