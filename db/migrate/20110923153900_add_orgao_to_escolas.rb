# -*- encoding : utf-8 -*-
class AddOrgaoToEscolas < ActiveRecord::Migration
  def self.up
    add_column :escolas, :orgao_id, :integer
  end

  def self.down
    remove_column :escolas, :orgao_id
  end
end

