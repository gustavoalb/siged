class CreateTextos < ActiveRecord::Migration
  def self.up
    create_table :textos do |t|
      t.string :nome
      t.text :texto
      t.integer :categoria_id

      t.timestamps
    end
  end

  def self.down
    drop_table :textos
  end
end
