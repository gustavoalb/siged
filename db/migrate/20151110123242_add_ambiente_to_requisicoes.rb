class AddAmbienteToRequisicoes < ActiveRecord::Migration
  def change
    add_column :requisicoes, :ambiente, :string

  end
end
