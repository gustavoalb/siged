# -*- encoding : utf-8 -*-
class AddDistritoToEscolas < ActiveRecord::Migration
  def self.up
    add_column :escolas, :distrito, :string
  end

  def self.down
    remove_column :escolas, :distrito
  end
end
