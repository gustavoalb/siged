# -*- encoding : utf-8 -*-
class AddTipoToProcessos < ActiveRecord::Migration
  def self.up
    add_column :processos, :tipo, :string
  end

  def self.down
    remove_column :processos, :tipo
  end
end

