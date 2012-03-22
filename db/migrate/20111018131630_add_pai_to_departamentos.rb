class AddPaiToDepartamentos < ActiveRecord::Migration
  def self.up
    add_column :departamentos, :pai_id, :integer, :references => :departamentos
    add_column :departamentos, :filho_id, :integer
  end

  def self.down
    remove_column :departamentos, :filho_id
    remove_column :departamentos, :pai_id
  end
end
