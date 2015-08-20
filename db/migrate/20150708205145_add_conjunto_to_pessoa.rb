# -*- encoding : utf-8 -*-
class AddConjuntoToPessoa < ActiveRecord::Migration
  def self.up
    add_column :pessoas, :conjunto, :string
  end

  def self.down
    remove_column :pessoas, :conjunto
  end
end
