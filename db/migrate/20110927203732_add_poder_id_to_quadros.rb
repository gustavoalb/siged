class AddPoderIdToQuadros < ActiveRecord::Migration
  def self.up
    add_column :quadros, :poder_id, :integer
  end

  def self.down
    remove_column :quadros, :poder_id
  end
end
