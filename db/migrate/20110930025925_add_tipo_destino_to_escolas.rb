# -*- encoding : utf-8 -*-
class AddTipoDestinoToEscolas < ActiveRecord::Migration
  def self.up
    add_column :escolas, :tipo_destino_id, :integer
  end

  def self.down
    remove_column :escolas, :tipo_destino_id
  end
end

