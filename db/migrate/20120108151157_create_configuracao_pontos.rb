class CreateConfiguracaoPontos < ActiveRecord::Migration
  def self.up
    create_table :configuracao_pontos do |t|
      t.integer :ponto_id
      t.datetime :hora_entrada_manha
      t.string :tipo_entrada_manha,:size=>4
      t.datetime :hora_saida_manha
      t.string :tipo_saida_manha,:size=>4
      t.datetime :hora_entrada_tarde
      t.string :tipo_entrada_tarde,:size=>4
      t.datetime :hora_saida_tarde
      t.string :tipo_saida_tarde,:size=>4
      t.boolean :permitir_hora_extra,:default=>false
      t.boolean :permitir_banco_de_horas,:default=>false
      t.integer :entidade_id

      t.timestamps
    end
  end

  def self.down
    drop_table :configuracao_pontos
  end
end
