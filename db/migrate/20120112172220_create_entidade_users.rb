# -*- encoding : utf-8 -*-
class CreateEntidadeUsers < ActiveRecord::Migration
  def self.up
    create_table :entidade_users do |t|
      t.integer :user_id
      t.string :entidades

      t.timestamps
    end
  end

  def self.down
    drop_table :entidade_users
  end
end

