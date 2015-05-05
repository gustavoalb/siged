# -*- encoding : utf-8 -*-
class AddClasseToAdministracaoTarefas < ActiveRecord::Migration
  def self.up
    add_column :administracao_tarefas, :classe, :string
  end

  def self.down
    remove_column :administracao_tarefas, :classe
  end
end

