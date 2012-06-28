class AddNomeToMatrizes < ActiveRecord::Migration
  def self.up
    add_column :matrizes, :nome, :string
  end

  def self.down
    remove_column :matrizes, :nome
  end
end
