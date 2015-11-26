class AddAtivoToFuncionarios < ActiveRecord::Migration
  def change
    add_column :funcionarios, :ativo, :boolean,:default=>true
  end
end
