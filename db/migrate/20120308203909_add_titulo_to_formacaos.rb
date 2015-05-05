# -*- encoding : utf-8 -*-
class AddTituloToFormacaos < ActiveRecord::Migration
  def self.up
    add_column :formacaos, :titulo_id, :integer
  end

  def self.down
    remove_column :formacaos, :titulo_id
  end
end

