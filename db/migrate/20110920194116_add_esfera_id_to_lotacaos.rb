class AddEsferaIdToLotacaos < ActiveRecord::Migration
  def self.up
    add_column :lotacaos, :esfera_id, :integer
  end

  def self.down
    remove_column :lotacaos, :esfera_id
  end
end
