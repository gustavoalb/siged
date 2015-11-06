# -*- encoding : utf-8 -*-
class AddArquivoCodigoToPontos < ActiveRecord::Migration
  def self.up
    add_column :pontos, :arquivo_codigo, :bytea
  end

  def self.down
    remove_column :pontos, :arquivo_codigo
  end
end
