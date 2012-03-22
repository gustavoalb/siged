class AddStringsToDescricaoCargo < ActiveRecord::Migration
  def self.up
    add_column :descricao_cargos, :tipo, :string
    add_column :descricao_cargos, :nivel_cargo, :string
  end

  def self.down
    remove_column :descricao_cargos, :nivel_cargo
    remove_column :descricao_cargos, :tipo
  end
end
