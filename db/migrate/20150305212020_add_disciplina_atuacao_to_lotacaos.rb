# -*- encoding : utf-8 -*-
class AddDisciplinaAtuacaoToLotacaos < ActiveRecord::Migration
  def self.up
    add_column :lotacaos, :disciplina_atuacao_id, :integer
  end

  def self.down
    remove_column :lotacaos, :disciplina_atuacao_id
  end
end

