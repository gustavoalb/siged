# -*- encoding : utf-8 -*-
class AddVerificadoToFuncionarios < ActiveRecord::Migration
  def self.up
    add_column :funcionarios, :verificado, :boolean
  end

  def self.down
    remove_column :funcionarios, :verificado
  end
end

