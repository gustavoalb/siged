class AddTipoToTipoDestinos < ActiveRecord::Migration
  def self.up
    add_column :tipo_destinos, :tipo, :string,:limit=>20
  end

  def self.down
    remove_column :tipo_destinos, :tipo
  end
end
