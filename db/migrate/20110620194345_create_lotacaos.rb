class CreateLotacaos < ActiveRecord::Migration
  def self.up
    create_table :lotacaos do |t|
      t.integer  :funcionario_id
      t.integer  :escola_id
      t.integer  :carga_horaria_disponivel
      t.date     :data_lotacao
      t.boolean  :regencia_de_classe

      t.timestamps
    end
  end

  def self.down
    drop_table :lotacaos
  end
end

