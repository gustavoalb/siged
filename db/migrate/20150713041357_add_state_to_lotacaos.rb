# -*- encoding : utf-8 -*-
class AddStateToLotacaos < ActiveRecord::Migration
  def self.up
    add_column :lotacaos, :state, :string
  end

  def self.down
    remove_column :lotacaos, :state
  end
end
