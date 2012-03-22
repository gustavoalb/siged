class AddCepToEscolas < ActiveRecord::Migration
  def self.up
    add_column :escolas, :cep, :string
    add_column :escolas, :cnpj, :string
  end

  def self.down
    remove_column :escolas, :cnpj
    remove_column :escolas, :cep
  end
end
