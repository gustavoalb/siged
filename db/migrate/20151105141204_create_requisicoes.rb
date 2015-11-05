class CreateRequisicoes < ActiveRecord::Migration
  def change
    create_table :requisicoes do |t|
      t.integer :funcionario_id
      t.string :tipo_requisicao
      t.integer :periodo_id
      t.string :status

      t.timestamps
    end
  end
end
