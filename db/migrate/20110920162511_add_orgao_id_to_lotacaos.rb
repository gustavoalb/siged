class AddOrgaoIdToLotacaos < ActiveRecord::Migration
  def self.up
    add_column :lotacaos, :orgao_id, :integer
  end

  def self.down
    remove_column :lotacaos, :orgao_id
  end
end
