# -*- encoding : utf-8 -*-
class CreateStatuses < ActiveRecord::Migration
  def self.up
    create_table :statuses do |t|
      t.integer :processo_id
      t.date :data
      t.string :status

      t.timestamps
    end
  end

  def self.down
    drop_table :statuses
  end
end

