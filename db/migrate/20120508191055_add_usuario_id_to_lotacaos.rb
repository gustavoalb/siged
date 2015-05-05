# -*- encoding : utf-8 -*-
class AddUsuarioIdToLotacaos < ActiveRecord::Migration
  def self.up
    add_column :lotacaos, :usuario_id, :integer
  end

  def self.down
    remove_column :lotacaos, :usuario_id
  end
end

