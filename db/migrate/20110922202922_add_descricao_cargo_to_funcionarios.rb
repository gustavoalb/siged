class AddDescricaoCargoToFuncionarios < ActiveRecord::Migration
  def self.up
    add_column :funcionarios, :descricao_cargo_id, :integer
  end

  def self.down
    remove_column :funcionarios, :descricao_cargo_id
  end
end
