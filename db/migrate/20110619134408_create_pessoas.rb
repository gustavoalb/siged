# -*- encoding : utf-8 -*-
class CreatePessoas < ActiveRecord::Migration
  def self.up
    create_table :pessoas do |t|
      t.string :nome
      t.string :sexo
      t.string :endereco
      t.string :numero
      t.string :complemento
      t.string :bairro
      t.string :telefone_residencial
      t.string :telefone_celular
      t.date :nascimento
      t.string :naturalidade
      t.string :nacionalidade
      t.string :cpf
      t.string :rg
      t.string :pis_pasep
      t.integer :cidade_id
      t.string :uf
      t.integer :dep_ir
      t.integer :dep_sf
      t.integer :ano_de_chegada
      t.string :estado_civil
      t.string :escolaridade
      t.string :titulo_eleitor
      t.string :zona_eleitoral
      t.string :secao

      t.timestamps
    end
  end

  def self.down
    drop_table :pessoas
  end
end


