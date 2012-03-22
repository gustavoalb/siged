class CreatePontos < ActiveRecord::Migration
  def self.up
    create_table :pontos do |t|
      t.integer :entidade_id
      t.integer :funcionario_id
      t.integer :lotacao_id
      t.date :data

      t.timestamps
    end

  end

  def self.down
    drop_table :pontos
  end
end
