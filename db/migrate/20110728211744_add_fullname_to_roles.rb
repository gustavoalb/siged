# -*- encoding : utf-8 -*-
class AddFullnameToRoles < ActiveRecord::Migration
  def self.up
    add_column :roles, :fullname, :string
    add_column :roles, :description, :string
  end

  def self.down
    remove_column :roles, :description
    remove_column :roles, :fullname
  end
end

