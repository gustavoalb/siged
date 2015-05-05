# -*- encoding : utf-8 -*-
class AddLotacaoRecadToFuncionarios < ActiveRecord::Migration
  def self.up
    add_column :funcionarios, :lotacao_recad, :string
  end

  def self.down
    remove_column :funcionarios, :lotacao_recad
  end
end

