# -*- encoding : utf-8 -*-
class AddFuncionarioidToGratificacao < ActiveRecord::Migration
  def self.up
    add_column :gratificacoes, :funcionario_id, :integer
  end

  def self.down
    remove_column :gratificacoes, :funcionario_id
  end
end
