# -*- encoding : utf-8 -*-
class AlterDisciplinasHabilitacoes < ActiveRecord::Migration
  def self.up
  	rename_column :disciplinas_habilitacoes,:descricao_cargo_id,:disciplina_contratacao_id
  end

  def self.down
  	rename_column :disciplinas_habilitacoes,:disciplina_contratacao_id,:descricao_cargo_id
  end
end

