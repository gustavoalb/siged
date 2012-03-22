class AddLotacaoidToEspecificarLotacaos < ActiveRecord::Migration
  def self.up
    add_column :especificar_lotacaos, :lotacao_id, :integer
  end

  def self.down
    remove_column :especificar_lotacaos, :lotacao_id
  end
end
