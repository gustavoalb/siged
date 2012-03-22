class CreateAnoLetivos < ActiveRecord::Migration
  def self.up
    create_table :ano_letivos do |t|
      t.integer :escola_id
      t.date :inicio
      t.date :termino
      t.text :informacoes
      t.integer :ano
      t.string  :slug

      t.timestamps
    end
  end

  def self.down
    drop_table :ano_letivos
  end
end
