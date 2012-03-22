class AddTipoDesestinoToLotacaos < ActiveRecord::Migration
  def self.up
    add_column :lotacaos, :tipo_destino_id, :integer
    add_column :lotacaos, :departamento_id, :integer
    add_column :lotacaos, :unidade_id, :integer
  end

  def self.down
    remove_column :lotacaos, :unidade_id
    remove_column :lotacaos, :departamento_id
    remove_column :lotacaos, :tipo_destino_id
  end
end
