# -*- encoding : utf-8 -*-
class RemoveFieldsFromMatrizes < ActiveRecord::Migration
  def self.up
    remove_column :matrizes, :nivel
  end

  def self.down
    add_column :matrizes, :nivel, :string
  end
end

