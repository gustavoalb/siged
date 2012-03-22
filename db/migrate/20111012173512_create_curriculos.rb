class CreateCurriculos < ActiveRecord::Migration
  def self.up
    create_table :curriculos do |t|
      t.integer :matriz_id
      t.integer :disciplina_id
      t.integer :serie_id
      t.string :classe
      t.string :area
      t.integer :horas_semanal

      t.timestamps
    end
  end

  def self.down
    drop_table :curriculos
  end
end
