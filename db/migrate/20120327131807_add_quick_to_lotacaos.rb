# -*- encoding : utf-8 -*-
class AddQuickToLotacaos < ActiveRecord::Migration
  def self.up
    add_column :lotacaos, :quick, :boolean,:default=>false
  end

  def self.down
    remove_column :lotacaos, :quick
  end
end

