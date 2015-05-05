# -*- encoding : utf-8 -*-
class AddFuncionarioToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :funcionario_id, :integer
  end

  def self.down
    remove_column :users, :funcionario_id
  end
end

