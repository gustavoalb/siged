class AddLotacaoToRequisicoes < ActiveRecord::Migration
  def change
    add_column :requisicoes, :lotacao_type, :string

    add_column :requisicoes, :lotacao_id, :integer

  end
end
