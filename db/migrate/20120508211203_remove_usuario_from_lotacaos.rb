# -*- encoding : utf-8 -*-
class RemoveUsuarioFromLotacaos < ActiveRecord::Migration
  def self.up
    remove_column :lotacaos, :usuario
  end

  def self.down
    add_column :lotacaos, :usuario, :string
  end
end

