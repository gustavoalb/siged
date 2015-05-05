# -*- encoding : utf-8 -*-
class AddDistritoIdToFuncionarios < ActiveRecord::Migration
  def self.up
    add_column :funcionarios, :distrito_id, :integer
  end

  def self.down
    remove_column :funcionarios, :distrito_id
  end
end

