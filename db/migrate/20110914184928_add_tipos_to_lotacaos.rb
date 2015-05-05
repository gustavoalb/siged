# -*- encoding : utf-8 -*-
class AddTiposToLotacaos < ActiveRecord::Migration
  def self.up
    add_column :lotacaos, :tipo_lotacao, :string,:limit=>20
  end
    

  def self.down
    remove_column :lotacaos, :tipo_lotacao
  end
end

