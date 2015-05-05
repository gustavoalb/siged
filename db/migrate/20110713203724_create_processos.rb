# -*- encoding : utf-8 -*-
class CreateProcessos < ActiveRecord::Migration
  def self.up
    create_table :processos do |t|
      t.string :processo
      t.string :natureza
      t.integer :ano_processo, :size=>4
      t.integer :pessoa_id
      t.integer :funcionario_id
      t.integer :destino_id
      t.boolean :regencia_classe
      t.datetime :encaminhado_em
      t.integer :substituto_id
      t.integer :temporalidade
      t.integer :status_id
      t.datetime :lotado_em
      t.text :observacao
      t.integer :responsavelcriacao_id
      t.integer :responsavelfinal_id
      t.boolean :finalizado, :default=>false
      t.datetime :data_finalizado

      t.timestamps
    end
  add_index :processos, :processo
  add_index :processos, :pessoa_id
  add_index :processos, :funcionario_id
  add_index :processos, :status_id
  end

  def self.down
    drop_table :processos
  end
end


