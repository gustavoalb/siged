# -*- encoding : utf-8 -*-
class AddNivelToSeries < ActiveRecord::Migration
  def self.up
    add_column :series, :nivel_id, :integer
  end

  def self.down
    remove_column :series, :nivel_id
  end
end

