# -*- encoding : utf-8 -*-
class AddAtributoToAdministracaoTarefas < ActiveRecord::Migration
  def self.up
    add_column :administracao_tarefas, :atributo, :string
  end

  def self.down
    remove_column :administracao_tarefas, :atributo
  end
end

