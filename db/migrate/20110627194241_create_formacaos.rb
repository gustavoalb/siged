class CreateFormacaos < ActiveRecord::Migration
  def self.up
    create_table :formacaos do |t|
      t.integer :pessoa_id
      t.string :nivel
      t.string :ano_de_inicio
      t.string :ano_de_termino
      t.string :curso
      t.string :titulacao
      t.string :habilitacao

      t.timestamps
    end
  end

  def self.down
    drop_table :formacaos
  end
end
