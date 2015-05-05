# -*- encoding : utf-8 -*-
class AlterSettings < ActiveRecord::Migration
  def self.up
  remove_column :settings,:data
  add_column :settings,:data,:date
  end

  def self.down
  remove_column :settings,:data
  end
end

