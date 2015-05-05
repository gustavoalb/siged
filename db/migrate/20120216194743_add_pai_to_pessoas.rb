# -*- encoding : utf-8 -*-
class AddPaiToPessoas < ActiveRecord::Migration
  def self.up
    add_column :pessoas, :pai, :string
    add_column :pessoas, :mae, :string
  end

  def self.down
    remove_column :pessoas, :mae
    remove_column :pessoas, :pai
  end
end

