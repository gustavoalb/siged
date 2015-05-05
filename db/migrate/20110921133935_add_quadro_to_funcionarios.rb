# -*- encoding : utf-8 -*-
class AddQuadroToFuncionarios < ActiveRecord::Migration
  def self.up
    add_column :funcionarios, :quadro, :string
  end

  def self.down
    remove_column :funcionarios, :quadro
  end
end

