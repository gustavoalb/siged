# -*- encoding : utf-8 -*-
class CreateAutoNums < ActiveRecord::Migration
  def self.up
    create_table :auto_nums do |t|
      t.string :tipo

      t.timestamps
    end
  end

  def self.down
    drop_table :auto_nums
  end
end

