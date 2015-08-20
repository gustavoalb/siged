# -*- encoding : utf-8 -*-
class AddArquivoToPontos < ActiveRecord::Migration
  def self.up
    add_column :pontos, :arquivo, :bytea
  end

  def self.down
    remove_column :pontos, :arquivo
  end
end
