# -*- encoding : utf-8 -*-
class AlterLotacaoStatus < ActiveRecord::Migration
  def self.up
   add_column :lotacaos,:finalizada,:boolean,:default=>false
  end

  def self.down
   remove_column :lotacaos,:finalizada
  end
end

