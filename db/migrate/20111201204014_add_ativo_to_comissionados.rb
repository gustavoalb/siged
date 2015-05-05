# -*- encoding : utf-8 -*-
class AddAtivoToComissionados < ActiveRecord::Migration
  def self.up
    add_column :comissionados, :ativo, :boolean,:default=>true
    add_column :comissionados, :decreto_exoneracao,:string
    add_column :comissionados, :data_exoneracao,:date
  end

  def self.down
    remove_column :comissionados, :ativo
    remove_column :comissionados, :decreto_exoneracao
    remove_column :comissionados, :data_exoneracao
  end
end

