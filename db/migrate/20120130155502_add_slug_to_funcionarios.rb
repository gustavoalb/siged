class AddSlugToFuncionarios < ActiveRecord::Migration
  def self.up
    add_column :funcionarios, :slug, :string
    add_index :funcionarios, :slug, :unique=> true
  end

  def self.down
    remove_column :funcionarios, :slug
  end
end
