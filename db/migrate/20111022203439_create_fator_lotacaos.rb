class CreateFatorLotacaos < ActiveRecord::Migration
  def self.up
    create_table :fator_lotacaos do |t|
      t.integer :turma_id
      t.integer :fator
      t.integer :serie_id
      t.integer :disciplina_id
      t.references :especificar_lotacao, :curriculo

      t.timestamps
    end
  end

  def self.down
    drop_table :fator_lotacaos
  end
end
