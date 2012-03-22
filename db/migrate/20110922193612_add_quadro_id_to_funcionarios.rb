class AddQuadroIdToFuncionarios < ActiveRecord::Migration
  def self.up
    add_column :funcionarios, :quadro_id, :integer
  end

  def self.down
    remove_column :funcionarios, :quadro_id
  end
end
