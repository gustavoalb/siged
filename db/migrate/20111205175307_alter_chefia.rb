# -*- encoding : utf-8 -*-
class AlterChefia < ActiveRecord::Migration
  def self.up
  rename_column :departamentos,:chefe_id,:responsavel_id
  end

  def self.down
  rename_column :departamentos,:responsavel_id,:chefe_id
  end
end

