class AddAttrsToFormacaos < ActiveRecord::Migration
  def self.up
    add_column :formacaos, :verificado, :boolean,:default=>:false
    add_column :formacaos, :principal, :boolean,:default=>:false
  end

  def self.down
    remove_column :formacaos, :principal
    remove_column :formacaos, :verificado
  end
end
