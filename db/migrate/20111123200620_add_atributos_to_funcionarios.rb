class AddAtributosToFuncionarios < ActiveRecord::Migration
  def self.up
    add_column :funcionarios, :cargo_em_comissao, :boolean
    add_column :funcionarios, :decreto_nomeacao_comissao, :string
    add_column :funcionarios, :data_decreto_nomeacao, :date
    add_column :funcionarios, :decreto_exoneracao_comissao, :string
    add_column :funcionarios, :data_decreto_exoneracao, :date
    add_column :funcionarios, :tipo_comissionado, :string
  end

  def self.down
    remove_column :funcionarios, :tipo_comissionado
    remove_column :funcionarios, :data_decreto_exoneracao
    remove_column :funcionarios, :decreto_exoneracao_comissao
    remove_column :funcionarios, :data_decreto_nomeacao
    remove_column :funcionarios, :decreto_nomeacao_comissao
    remove_column :funcionarios, :cargo_em_comissao
  end
end
