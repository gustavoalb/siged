# -*- encoding : utf-8 -*-
class AddPrivadaToTipoListas < ActiveRecord::Migration
  def self.up
    add_column :tipo_lista, :privada, :boolean,:default=>false
  end

  def self.down
    remove_column :tipo_lista, :privada
  end
end

