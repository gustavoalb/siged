class AddAttribsToFormacao < ActiveRecord::Migration
  def self.up
    add_column :formacaos, :tipo, :string
    add_column :formacaos, :status, :string
    add_column :formacaos, :data_obtencao_titulo, :string
    add_column :formacaos, :titulo_dissertacao, :string
    add_column :formacaos, :nome_orientador, :string
  end

  def self.down
    remove_column :formacaos, :nome_orientador
    remove_column :formacaos, :titulo_dissertacao
    remove_column :formacaos, :data_obtencao_titulo
    remove_column :formacaos, :status
    remove_column :formacaos, :tipo
  end
end
