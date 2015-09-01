class CreateGratificacoes < ActiveRecord::Migration
  def self.up
    create_table :gratificacoes do |t|
      t.string :nome
      t.string :codigo
      t.integer :valor_fixo
      t.integer :valor_porcentagem

      t.timestamps
    end
  end

  def self.down
    drop_table :gratificacoes
  end
end
