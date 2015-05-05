# -*- encoding : utf-8 -*-
class AddComissaoToFuncionarios < ActiveRecord::Migration
  def self.up
    add_column :funcionarios, :cargo_em_comissao, :string
    add_column :funcionarios, :decreto_nomeacao_comissao, :string
    add_column :funcionarios, :data_nomeacao_comissao, :date
    add_column :funcionarios, :decreto_exoneracao_comissao, :string
    add_column :funcionarios, :data_exoneracao_comissao, :date
  end

  def self.down
    remove_column :funcionarios, :data_exoneracao_comissao
    remove_column :funcionarios, :decreto_exoneracao_comissao
    remove_column :funcionarios, :data_nomeacao_comissao
    remove_column :funcionarios, :decreto_nomeacao_comissao
    remove_column :funcionarios, :cargo_em_comissao
  end
end

