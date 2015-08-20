# -*- encoding : utf-8 -*-
class AddInteriorizacaoToFuncionario < ActiveRecord::Migration
  def self.up
    add_column :funcionarios, :interiorizacao, :boolean,:default=>false
    add_column :funcionarios, :interiorizacao_valor, :integer
    add_column :funcionarios, :interiorizacao_rubrica, :integer
  end

  def self.down
    remove_column :funcionarios, :interiorizacao
    remove_column :funcionarios, :interiorizacao_valor
    remove_column :funcionarios, :interiorizacao_rubrica
  end
end
