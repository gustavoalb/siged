# -*- encoding : utf-8 -*-
class AddDepartamentoToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :orgao_id, :integer
    add_column :users, :departamento_id, :integer
  end

  def self.down
    remove_column :users, :departamento_id
    remove_column :users, :orgao_id
  end
end

