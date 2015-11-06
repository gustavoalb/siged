# -*- encoding : utf-8 -*-
class AddUnidadeOrganizacionalToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :unidade_organizacional_type, :string
    add_column :users, :unidade_organizacional_id, :integer
  end

  def self.down
    remove_column :users, :unidade_organizacional_id
    remove_column :users, :unidade_organizacional_type
  end
end
