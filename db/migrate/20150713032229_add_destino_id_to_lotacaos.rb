class AddDestinoIdToLotacaos < ActiveRecord::Migration
  def self.up
    add_column :lotacaos, :destino_id, :integer
  end

  def self.down
    remove_column :lotacaos, :destino_id
  end
end
