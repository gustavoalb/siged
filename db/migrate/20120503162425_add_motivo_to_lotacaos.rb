class AddMotivoToLotacaos < ActiveRecord::Migration
  def self.up
    add_column :lotacaos, :motivo, :text
  end

  def self.down
    remove_column :lotacaos, :motivo
  end
end
