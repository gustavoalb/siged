# -*- encoding : utf-8 -*-
class AddFonteRecursosIdToFuncionarios < ActiveRecord::Migration
  def self.up
    add_column :funcionarios, :fonte_recurso_id, :integer
  end

  def self.down
    remove_column :funcionarios, :fonte_recurso_id
  end
end

