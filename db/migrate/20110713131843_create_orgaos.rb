class CreateOrgaos < ActiveRecord::Migration
  def self.up
    create_table :orgaos do |t|
      t.string :codigo
      t.string :nome
      t.string :sigla
      t.integer :responsavel_id
      t.string :telefone
      t.string :endereco
      t.string :numero
      t.string :complemento
      t.string :grupo

      t.timestamps
    end
  end

  def self.down
    drop_table :orgaos
  end
end
