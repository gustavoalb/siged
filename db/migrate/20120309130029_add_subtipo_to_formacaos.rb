# -*- encoding : utf-8 -*-
class AddSubtipoToFormacaos < ActiveRecord::Migration
  def self.up
    add_column :formacaos, :subtipo_id, :integer
  end

  def self.down
    remove_column :formacaos, :subtipo_id
  end
end

