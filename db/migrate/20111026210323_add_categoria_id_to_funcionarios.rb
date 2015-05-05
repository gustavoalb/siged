# -*- encoding : utf-8 -*-
class AddCategoriaIdToFuncionarios < ActiveRecord::Migration
  def self.up
    add_column :funcionarios, :categoria_id, :integer
  end

  def self.down
    remove_column :funcionarios, :categoria_id
  end
end

