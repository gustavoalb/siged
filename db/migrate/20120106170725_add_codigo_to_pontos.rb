# -*- encoding : utf-8 -*-
class AddCodigoToPontos < ActiveRecord::Migration
  def self.up
    add_column :pontos, :codigo_barras, :string
    add_column :pontos, :verificado, :boolean,:default=>false
    add_column :pontos, :valido, :boolean,:default=>false
  end

  def self.down
    remove_column :pontos, :valido
    remove_column :pontos, :verificado
    remove_column :pontos, :codigo_barras
  end
end

