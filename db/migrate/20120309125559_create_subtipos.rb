# -*- encoding : utf-8 -*-
class CreateSubtipos < ActiveRecord::Migration
  def self.up
    create_table :subtipos do |t|
      t.integer :nivel_id
      t.string :nome

      t.timestamps
    end
  end

  def self.down
    drop_table :subtipos
  end
end

