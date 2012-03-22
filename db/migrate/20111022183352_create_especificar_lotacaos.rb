class CreateEspecificarLotacaos < ActiveRecord::Migration
  def self.up
    create_table :especificar_lotacaos do |t|
      t.integer :funcionario_id
      t.integer :escola_id
      t.integer :turma_id
      t.integer :disciplina_id
      t.integer :hora_semanal

      t.timestamps
    end
  end

  def self.down
    drop_table :especificar_lotacaos
  end
end
