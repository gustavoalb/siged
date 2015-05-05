# -*- encoding : utf-8 -*-
class AddAtributosToFuncionarios < ActiveRecord::Migration
  def self.up
    add_column :funcionarios, :data_decreto_nomeacao, :date
    add_column :funcionarios, :data_decreto_exoneracao, :date
    add_column :funcionarios, :tipo_comissionado, :string
  end

  def self.down
    remove_column :funcionarios, :tipo_comissionado
    remove_column :funcionarios, :data_decreto_exoneracao
    remove_column :funcionarios, :data_decreto_nomeacao
  end
end

