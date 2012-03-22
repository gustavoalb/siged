class AddQuadroToFuncionarios < ActiveRecord::Migration
  def self.up
    add_column :funcionarios, :quadro, :string
    add_column :funcionarios, :folha, :string
  end

  def self.down
    remove_column :funcionarios, :quadro
    remove_column :funcionarios, :folha
  end
end
