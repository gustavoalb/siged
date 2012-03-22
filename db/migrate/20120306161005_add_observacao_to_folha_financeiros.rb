class AddObservacaoToFolhaFinanceiros < ActiveRecord::Migration
  def self.up
    add_column :folha_financeiros, :observacao, :string
  end

  def self.down
    remove_column :folha_financeiros, :observacao
  end
end
