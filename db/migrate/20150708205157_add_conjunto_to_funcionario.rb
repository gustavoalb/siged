class AddConjuntoToFuncionario < ActiveRecord::Migration
  def self.up
    add_column :funcionarios, :conjunto, :string
  end

  def self.down
    remove_column :funcionarios, :conjunto
  end
end
