class CreateTipoLista < ActiveRecord::Migration
  def self.up
    create_table :tipo_lista do |t|
      t.string :nome
      t.integer :peso
      t.boolean :ativo,:default=>true
      t.string :tipo_objeto

      t.timestamps
    end
  end

  def self.down
    drop_table :tipo_lista
  end
end
