class RemoveFieldsFromEscola < ActiveRecord::Migration
  def self.up
    remove_column :escolas, :diretor_id
    remove_column :escolas, :diretor_adjunto_id
    remove_column :escolas, :secretario_id
    remove_column :escolas, :supervisor_id
    remove_column :departamentos, :responsavel_id
  end

  def self.down
    add_column :escolas, :supervisor_id, :integer
    add_column :escolas, :secretario_id, :integer
    add_column :escolas, :diretor_adjunto_id, :integer
    add_column :escolas, :diretor_id, :integer
    add_column :departamentos, :responsavel_id, :integer
  end
end
