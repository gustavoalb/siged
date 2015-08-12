class AddUsuarioToFuncionario < ActiveRecord::Migration
  def self.up
    add_column :funcionarios, :usuario_id, :integer
  end

  def self.down
    remove_column :funcionarios, :usuario_id
  end
end
