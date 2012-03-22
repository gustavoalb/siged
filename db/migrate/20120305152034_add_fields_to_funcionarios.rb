class AddFieldsToFuncionarios < ActiveRecord::Migration
  def self.up
    add_column :funcionarios, :codigo_sirh, :string
  end

  def self.down
    remove_column :funcionarios, :codigo_sirh
  end
end
