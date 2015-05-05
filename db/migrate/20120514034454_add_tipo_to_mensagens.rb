# -*- encoding : utf-8 -*-
class AddTipoToMensagens < ActiveRecord::Migration
  def self.up
    add_column :mensagens, :tipo, :string
  end

  def self.down
    remove_column :mensagens, :tipo
  end
end

