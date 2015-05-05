# -*- encoding : utf-8 -*-
class AddAttrToMatrizes < ActiveRecord::Migration
  def self.up
    add_column :matrizes, :dias_letivos_semanais, :integer
    add_column :matrizes, :semanas_letivas, :integer
    add_column :matrizes, :modulo_aula, :integer
    add_column :matrizes, :carga_horaria_anual, :integer
  end

  def self.down
    remove_column :matrizes, :carga_horaria_anual
    remove_column :matrizes, :modulo_aula
    remove_column :matrizes, :semanas_letivas
    remove_column :matrizes, :dias_letivos_semanais
  end
end

