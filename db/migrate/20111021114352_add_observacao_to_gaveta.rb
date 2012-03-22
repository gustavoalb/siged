class AddObservacaoToGaveta < ActiveRecord::Migration
  def self.up
    add_column :gaveta, :observacao, :text
  end

  def self.down
    remove_column :gaveta, :observacao
  end
end
