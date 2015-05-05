# -*- encoding : utf-8 -*-
class CreateCarta < ActiveRecord::Migration
  def self.up
    create_table :carta do |t|
      t.integer :funcionario_id
      t.integer :lotacao_id
      t.boolean :impressa,:default=>false
      t.string :carta_file_name
      t.string :carta_content_type
      t.integer :carta_file_size
      t.integer :carta_updated_at

      t.timestamps
    end
  end

  def self.down
    drop_table :carta
  end
end

