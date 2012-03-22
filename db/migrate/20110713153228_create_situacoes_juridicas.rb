class CreateSituacoesJuridicas < ActiveRecord::Migration
  def self.up
    create_table :situacoes_juridicas do |t|
      t.string :nome
      t.string :sigla
      t.integer :evento_previdencia_id
      t.integer :evento_vencimento_id
      t.integer :evento_tributacao_id
      t.integer :exercicio_anual
      t.integer :exercicio_mensal
      t.string :exercicio_folha

      t.timestamps
    end
  add_index :situacoes_juridicas,:nome
  add_index :situacoes_juridicas,:sigla
  end

  def self.down
    drop_table :situacoes_juridicas
  end
end
