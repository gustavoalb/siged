# -*- encoding : utf-8 -*-
class AddDiretorToEscola < ActiveRecord::Migration
  def self.up
    add_column :escolas, :diretor_id, :integer
  end

  def self.down
    remove_column :escolas, :diretor_id
  end
end

