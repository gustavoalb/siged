class AlterColapsoMatrizes < ActiveRecord::Migration
  def self.up
    rename_column :colapso_matrizes, :matrize_id,:matriz_id 
    rename_column :turmas,:matrize_id,:matriz_id
  end

  def self.down
    rename_column :turmas,:matriz_id,:matrize_id
    rename_column :colapso_matrizes, :matriz_id,:matrize_id 
  end
end
