class CreateFolhaFinanceiros < ActiveRecord::Migration
  def self.up
    create_table :folha_financeiros do |t|
      t.integer :evento_id,:null=>false
      t.integer :sequencia,:null=>false
      t.integer :ano,:null=>false
      t.integer :mes,:null=>false
      t.integer :funcionario_id,:null=>false
      t.integer :prazo,:null=>false,:default=>0
      t.integer :parametro,:null=>false,:default=>0
      t.integer :tipo_parametro_id
      t.integer :quantidade,:null=>false,:default=>0
      t.float :valor,:null=>false

      t.timestamps
    end
          add_index :folha_financeiros,[:evento_id,:funcionario_id,:ano,:mes,:sequencia],:name => "eventos_variaveis_index", :unique => true
  end

  def self.down
    drop_table :folha_financeiros
  end
end
