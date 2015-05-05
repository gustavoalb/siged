# -*- encoding : utf-8 -*-
class CreateSeries < ActiveRecord::Migration
  def self.up
    create_table :series do |t|
      t.string :nome
      t.string :codigo

      t.timestamps
    end
  end

  def self.down
    drop_table :series
  end
end

