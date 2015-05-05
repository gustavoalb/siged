# -*- encoding : utf-8 -*-
class AddFolhaIdToFolhaFinanceiros < ActiveRecord::Migration
  def self.up
    add_column :folha_financeiros, :folha_id, :integer,:null=>false
  end

  def self.down
    remove_column :folha_financeiros, :folha_id
  end
end

