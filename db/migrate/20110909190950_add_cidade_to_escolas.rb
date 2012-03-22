class AddCidadeToEscolas < ActiveRecord::Migration
  def self.up
    add_column :escolas, :cidade, :string
  end

  def self.down
    remove_column :escolas, :cidade
  end
end
