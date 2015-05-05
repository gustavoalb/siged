# -*- encoding : utf-8 -*-
class AddValorToAdministracaoTarefas < ActiveRecord::Migration
  def self.up
    add_column :administracao_tarefas, :valor, :string
  end

  def self.down
    remove_column :administracao_tarefas, :valor
  end
end

