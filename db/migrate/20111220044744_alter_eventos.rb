# -*- encoding : utf-8 -*-
class AlterEventos < ActiveRecord::Migration
  def self.up
      rename_column :folha_eventos,:condigo_contabil,:codigo_contabil
  end

  def self.down
  end
end

