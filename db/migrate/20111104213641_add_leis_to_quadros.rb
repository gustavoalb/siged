class AddLeisToQuadros < ActiveRecord::Migration
  def self.up
    add_column :quadros, :lei, :string
    add_column :quadros, :data_lei, :date
  end

  def self.down
    remove_column :quadros, :data_lei
    remove_column :quadros, :lei
  end
end
