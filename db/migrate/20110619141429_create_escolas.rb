class CreateEscolas < ActiveRecord::Migration
  def self.up
    create_table :escolas do |t|
      t.string :codigo
      t.string :nome_da_escola
      t.string :tipologia
      t.string :rede
      t.string :zona
      t.string :endereco
      t.integer :cidade_id
      t.string :telefone
      t.string :fax
      t.string :email
      t.integer :latitude
      t.integer :longitude
      t.integer :nae_id

      t.timestamps
    end
  end

  def self.down
    drop_table :escolas
  end
end
