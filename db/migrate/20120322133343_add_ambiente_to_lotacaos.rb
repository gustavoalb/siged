# -*- encoding : utf-8 -*-
class AddAmbienteToLotacaos < ActiveRecord::Migration
  def self.up
    add_column :lotacaos, :ambiente_id, :integer
  end

  def self.down
    remove_column :lotacaos, :ambiente_id
  end
end

