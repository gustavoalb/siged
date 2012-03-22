class AddTipoToEspecificarLotacaos < ActiveRecord::Migration
  def self.up
    add_column :especificar_lotacaos, :tipo, :string
  end

  def self.down
    remove_column :especificar_lotacaos, :tipo
  end
end
