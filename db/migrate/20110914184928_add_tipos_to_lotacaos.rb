class AddTiposToLotacaos < ActiveRecord::Migration
  def self.up
    add_column :lotacaos, :tipo_lotacao, :string,:limit=>20
  end
    add_index :lotacaos,:tipo

  def self.down
    remove_column :lotacaos, :tipo
  end
end
