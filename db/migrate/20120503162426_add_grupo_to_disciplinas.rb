class AddGrupoToDisciplinas < ActiveRecord::Migration
  def self.up
    add_column :disciplinas, :grupo, :integer
  end

  def self.down
    remove_column :disciplinas, :grupo
  end
end
