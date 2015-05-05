# -*- encoding : utf-8 -*-
class AddGerarPontoToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :gerar_ponto, :boolean,:null => false, :default => false
  end

  def self.down
    remove_column :users, :gerar_ponto
  end
end

