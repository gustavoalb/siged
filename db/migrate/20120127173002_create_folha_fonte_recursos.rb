class CreateFolhaFonteRecursos < ActiveRecord::Migration
  def self.up
    create_table :folha_fonte_recursos do |t|
      t.string :nome
      t.integer :esfera_id

      t.timestamps
    end
  end

  def self.down
    drop_table :folha_fonte_recursos
  end
end
