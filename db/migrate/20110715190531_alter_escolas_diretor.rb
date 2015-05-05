# -*- encoding : utf-8 -*-
class AlterEscolasDiretor < ActiveRecord::Migration
  def self.up
    add_column :escolas,:diretor,:string
  end

  def self.down
    remove_column :escolas,:diretor
  end
end

