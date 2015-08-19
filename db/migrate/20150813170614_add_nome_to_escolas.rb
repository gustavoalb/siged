class AddNomeToEscolas < ActiveRecord::Migration
  def self.up
    add_column :escolas, :nome, :string
  end

  def self.down
    remove_column :escolas, :nome
  end
end
