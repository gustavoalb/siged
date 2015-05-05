# -*- encoding : utf-8 -*-
class AddLicencaToFuncionarios < ActiveRecord::Migration
  def self.up
    add_column :funcionarios, :licenca, :boolean
  end

  def self.down
    remove_column :funcionarios, :licenca
  end
end

