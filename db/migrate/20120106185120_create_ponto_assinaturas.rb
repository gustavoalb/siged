class CreatePontoAssinaturas < ActiveRecord::Migration
  def self.up
    create_table :ponto_assinaturas do |t|
      t.string :ip_assinatura
      t.integer :ponto_diario_id
      t.datetime :data_assinatura
      t.boolean :assinado,:default=>false
      t.boolean :valido,:default=>false
      t.integer :evento_id
      t.string :tipo
      t.integer :dia
      t.integer :mes
      t.integer :ano

      t.timestamps
    end
  end

  def self.down
    drop_table :ponto_assinaturas
  end
end
