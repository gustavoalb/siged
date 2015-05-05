# -*- encoding : utf-8 -*-
class AddEscolaToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :escola_id, :integer
  end

  def self.down
    remove_column :users, :escola_id
  end
end

