class CreateMatrizes < ActiveRecord::Migration
  def self.up
    create_table :matrizes do |t|
      t.string :codigo
      t.string :nivel
      t.string :modalidade
      t.integer :dias_letivos_anuais

      t.timestamps
    end
  end

  def self.down
    drop_table :matrizes
  end
end
