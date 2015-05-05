# -*- encoding : utf-8 -*-
class CreateEntidadesUsers < ActiveRecord::Migration
  def self.up
  create_table :users_entidades, :id => false do |t|
       t.references :entidade, :user
  end
  end

  def self.down
  drop_table :users_entidades
  end
end

