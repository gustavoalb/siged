class AlterLotacao < ActiveRecord::Migration
  def self.up
    add_column :lotacaos,:codigo_barra,:string
  end

  def self.down
    remove_colum :lotacaos,:codigo_barra
  end
end
