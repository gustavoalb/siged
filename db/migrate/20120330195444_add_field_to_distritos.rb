class AddFieldToDistritos < ActiveRecord::Migration
  def self.up
    add_column :distritos, :tipo, :string
  end

  def self.down
    remove_column :distritos, :tipo
  end
end
