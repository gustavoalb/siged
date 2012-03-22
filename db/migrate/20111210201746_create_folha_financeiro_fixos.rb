class CreateFolhaFinanceiroFixos < ActiveRecord::Migration
  def self.up
    create_table :folha_financeiro_fixos do |t|
      t.integer :evento_id,:null=>false
      t.integer :ano,:null=>false,:limit=>4
      t.integer :mes,:null=>false,:limit=>2
      t.integer :funcionario_id,:null=>false
      t.integer :prazo,:null=>false,:default=>0
      t.integer :parametro,:null=>false,:default=>0
      t.integer :tipo_parametro_id
      t.integer :quantidade,:null=>false,:default=>0
      t.float   :valor


      t.timestamps
    end
      add_index :folha_financeiro_fixos,[:evento_id,:funcionario_id,:ano,:mes],:name => "eventos_fixos_index", :unique => true
  end

  def self.down
    drop_table :folha_financeiro_fixos
  end
end
