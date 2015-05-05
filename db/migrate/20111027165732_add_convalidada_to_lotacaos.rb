# -*- encoding : utf-8 -*-
class AddConvalidadaToLotacaos < ActiveRecord::Migration
  def self.up
    add_column :lotacaos, :convalidada, :boolean,:default=>false
    add_column :lotacaos, :data_convalidacao, :datetime
    add_column :lotacaos, :convalidador_id, :integer
  end

  def self.down
    remove_column :lotacaos, :convalidador_id
    remove_column :lotacaos, :data_convalidacao
    remove_column :lotacaos, :convalidada
  end
end

