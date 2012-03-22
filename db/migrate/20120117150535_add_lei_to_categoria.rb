class AddLeiToCategoria < ActiveRecord::Migration
  def self.up
    add_column :categoria, :lei, :string
  end

  def self.down
    remove_column :categoria, :lei
  end
end
