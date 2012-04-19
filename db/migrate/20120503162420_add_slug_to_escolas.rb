class AddSlugToEscolas < ActiveRecord::Migration
  def self.up
    add_column :escolas, :slug, :string
    Escola.all.each(&:save)
  end

  def self.down
    remove_column :escolas, :slug
  end
end
