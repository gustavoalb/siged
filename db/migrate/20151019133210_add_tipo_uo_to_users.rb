# -*- encoding : utf-8 -*-
class AddTipoUoToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :tipo_uo, :string
  end

  def self.down
    remove_column :users, :tipo_uo
  end
end
