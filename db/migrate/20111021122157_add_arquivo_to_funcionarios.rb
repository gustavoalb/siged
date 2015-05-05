# -*- encoding : utf-8 -*-
class AddArquivoToFuncionarios < ActiveRecord::Migration
  def self.up
    add_column :funcionarios, :arquivo_id, :integer
  end

  def self.down
    remove_column :funcionarios, :arquivo_id
  end
end

