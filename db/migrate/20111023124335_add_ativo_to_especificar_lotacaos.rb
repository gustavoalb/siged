class AddAtivoToEspecificarLotacaos < ActiveRecord::Migration
  def self.up
    add_column :especificar_lotacaos, :ativo, :boolean,:default=>true
  end

  def self.down
    remove_column :especificar_lotacaos, :ativo
  end
end
