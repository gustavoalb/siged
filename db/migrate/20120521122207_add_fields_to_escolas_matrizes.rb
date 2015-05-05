# -*- encoding : utf-8 -*-
class AddFieldsToEscolasMatrizes < ActiveRecord::Migration
  def self.up
    add_column :escolas_matrizes, :niveis_ensino_id, :integer
  end

  def self.down
    remove_column :escolas_matrizes, :niveis_ensino_id
  end
end

