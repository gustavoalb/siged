class AddDestinoIdToLotacaos < ActiveRecord::Migration
  def self.up
    add_column :lotacaos, :destino_id, :integer
    add_column :lotacaos, :destino_type, :string
  end

  def self.down
    remove_column :lotacaos, :destino_id
    remove_column :lotacaos, :destino_type
  end
end
