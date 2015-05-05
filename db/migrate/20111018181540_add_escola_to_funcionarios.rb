# -*- encoding : utf-8 -*-
class AddEscolaToFuncionarios < ActiveRecord::Migration
  def self.up
    add_column :funcionarios, :escola_id, :integer
  end

  def self.down
    remove_column :funcionarios, :escola_id
  end
end

