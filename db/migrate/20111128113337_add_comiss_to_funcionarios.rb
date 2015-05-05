# -*- encoding : utf-8 -*-
class AddComissToFuncionarios < ActiveRecord::Migration
  def self.up
    add_column :funcionarios, :tipo_comissao, :string
    add_column :funcionarios, :comissao_ativa, :boolean
  end

  def self.down
    remove_column :funcionarios, :comissao_ativa
    remove_column :funcionarios, :tipo_comissao
  end
end

