# -*- encoding : utf-8 -*-
class AddComplementarToLotacoes < ActiveRecord::Migration
  def self.up
    add_column :lotacaos, :complementar, :boolean,:default=>false
  end

  def self.down
    remove_column :lotacaos, :complementar
  end
end

