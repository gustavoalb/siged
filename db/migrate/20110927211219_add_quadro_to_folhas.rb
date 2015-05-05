# -*- encoding : utf-8 -*-
class AddQuadroToFolhas < ActiveRecord::Migration
  def self.up
    add_column :folhas, :quadro_id, :integer
  end

  def self.down
    remove_column :folhas, :quadro_id
  end
end

