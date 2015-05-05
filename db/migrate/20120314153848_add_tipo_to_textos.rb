# -*- encoding : utf-8 -*-
class AddTipoToTextos < ActiveRecord::Migration
  def self.up
    add_column :textos, :tipo, :string
  end

  def self.down
    remove_column :textos, :tipo
  end
end

