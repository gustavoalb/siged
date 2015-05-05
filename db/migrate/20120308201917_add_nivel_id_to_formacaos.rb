# -*- encoding : utf-8 -*-
class AddNivelIdToFormacaos < ActiveRecord::Migration
  def self.up
    add_column :formacaos, :nivel_id, :integer
  end

  def self.down
    remove_column :formacaos, :nivel_id
  end
end

