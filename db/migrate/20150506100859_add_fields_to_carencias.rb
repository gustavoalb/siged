# -*- encoding : utf-8 -*-
class AddFieldsToCarencias < ActiveRecord::Migration
  def self.up
    add_column :carencias, :disciplina, :string
    add_column :carencias, :escola, :string
  end

  def self.down
    remove_column :carencias, :escola
    remove_column :carencias, :disciplina
  end
end
