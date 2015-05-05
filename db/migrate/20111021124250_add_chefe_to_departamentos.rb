# -*- encoding : utf-8 -*-
class AddChefeToDepartamentos < ActiveRecord::Migration
  def self.up
    add_column :departamentos, :chefe_id, :integer
    add_column :departamentos, :telefone, :string
  end

  def self.down
    remove_column :departamentos, :telefone
    remove_column :departamentos, :chefe_id
  end
end

