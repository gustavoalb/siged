class AddArquivoToPontos < ActiveRecord::Migration
  def self.up
    add_column :pontos, :arquivo_ponto, :oid
    add_column :pontos, :arquivo_codigo, :oid
  end

  def self.down
    remove_column :pontos, :arquivo_codigo
    remove_column :pontos, :arquivo_ponto
  end
end
