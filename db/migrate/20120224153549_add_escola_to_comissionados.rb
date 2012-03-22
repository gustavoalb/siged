class AddEscolaToComissionados < ActiveRecord::Migration
  def self.up
    add_column :comissionados, :escola_id, :integer
    add_column :comissionados, :departamento_id, :integer
    add_column :comissionados, :tipo_destino_id, :integer
  end

  def self.down
    remove_column :comissionados, :escola_id
    remove_column :comissionados, :departamento_id
    remove_column :comissionados, :tipo_destino_id
  end
end
