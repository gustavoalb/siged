class AddTipoDestinoToDepartamentos < ActiveRecord::Migration
  def self.up
    add_column :departamentos, :tipo_destino_id, :integer
  end

  def self.down
    remove_column :departamentos, :tipo_destino_id
  end
end
