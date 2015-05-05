# -*- encoding : utf-8 -*-
class AddSiglaToCategorias < ActiveRecord::Migration
  def self.up
    add_column :categoria, :sigla, :string
  end

  def self.down
    remove_column :categoria, :sigla
  end
end

