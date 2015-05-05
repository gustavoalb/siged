# -*- encoding : utf-8 -*-
class AddVencimentoToFuncionarios < ActiveRecord::Migration
  def self.up
    add_column :funcionarios, :vencimento, :float
    rename_column :folha_folhas,:competencia,:competencia_id
  end

  def self.down
    remove_column :funcionarios, :vencimento
  end
end

