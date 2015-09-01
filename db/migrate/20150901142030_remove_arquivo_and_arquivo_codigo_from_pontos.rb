class RemoveArquivoAndArquivoCodigoFromPontos < ActiveRecord::Migration
  def self.up
    remove_column :pontos, :arquivo
    remove_column :pontos, :arquivo_codigo
  end

  def self.down
    add_column :pontos, :arquivo_codigo, :bytea
    add_column :pontos, :arquivo, :bytea
  end
end
