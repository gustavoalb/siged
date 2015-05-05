# -*- encoding : utf-8 -*-
class CreateFuncionarios < ActiveRecord::Migration
  def self.up
    create_table :funcionarios do |t|
      t.integer :pessoa_id
      t.string :matricula
      t.string :cpf
      t.string :cargo_nome
      t.integer :cargo_id
      t.string :funcao
      t.string :orgao_id
      t.integer :nivel_id
      t.string :jornada
      t.string :classe
      t.string :decreto_nomeacao
      t.date :data_nomeacao
      t.string :termo_posse
      t.integer :comissao_id
      t.string :afastamento
      t.string :funcao_gratificada
      t.string :municipio_opcao_id
      t.integer :sjuridica_id
      t.string :folha
      t.string :banco
      t.string :agencia
      t.string :conta

      t.timestamps
    end
  end

  def self.down
    drop_table :funcionarios
  end
end

