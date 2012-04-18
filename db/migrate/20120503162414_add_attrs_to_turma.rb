class AddAttrsToTurma < ActiveRecord::Migration
  def self.up
    add_column :turmas, :nome, :string
  end

  def self.down
    remove_column :turmas, :nome
  end
end
