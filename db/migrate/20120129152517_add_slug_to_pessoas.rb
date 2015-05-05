# -*- encoding : utf-8 -*-
class AddSlugToPessoas < ActiveRecord::Migration
  def self.up
    add_column :pessoas, :slug, :string
    add_index :pessoas,:slug, :unique=> true

  end


  def self.down
    remove_column :pessoas, :slug
  end
end

