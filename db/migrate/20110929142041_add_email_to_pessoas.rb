# -*- encoding : utf-8 -*-
class AddEmailToPessoas < ActiveRecord::Migration
  def self.up
    add_column :pessoas, :cep, :string
    add_column :pessoas, :email, :string
  end

  def self.down
    remove_column :pessoas, :email
    remove_column :pessoas, :cep
  end
end

