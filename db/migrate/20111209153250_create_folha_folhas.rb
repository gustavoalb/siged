class CreateFolhaFolhas < ActiveRecord::Migration
  def self.up
    create_table :folha_folhas do |t|
      t.integer :competencia
      t.integer :ano
      t.integer :mes
      t.boolean :padrao,:default=>false
      t.integer :esfera_id
      t.integer :entidade_id
      t.boolean :ativa,:default=>false

      t.timestamps
    end
  end

  def self.down
    drop_table :folha_folhas
  end
end
