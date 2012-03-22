class AddIdsToEscola < ActiveRecord::Migration
  def self.up
    add_column :escolas, :diretor_adjunto_id, :integer
    add_column :escolas, :supervisor_id, :integer
    add_column :escolas, :secretario_id, :integer
  end

  def self.down
    remove_column :escolas, :secretario_id
    remove_column :escolas, :supervisor_id
    remove_column :escolas, :diretor_adjunto_id
  end
end
