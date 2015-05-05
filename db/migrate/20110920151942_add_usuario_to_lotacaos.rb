# -*- encoding : utf-8 -*-
class AddUsuarioToLotacaos < ActiveRecord::Migration
  def self.up
    add_column :lotacaos, :usuario, :string
  end

  def self.down
    remove_column :lotacaos, :usuario
  end
end

