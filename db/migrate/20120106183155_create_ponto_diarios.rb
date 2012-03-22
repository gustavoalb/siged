class CreatePontoDiarios < ActiveRecord::Migration
  def self.up
    create_table :ponto_diarios do |t|
      t.string :ip_assinatura
      t.datetime :data_assinatura
      t.integer :user_id
      t.integer :pessoa_id
      t.integer :funcionario_id
      t.integer :ponto_id
      t.boolean :assinado,:false
      t.boolean :valido,:false
      t.integer :evento_id

      t.timestamps
    end
  end

  def self.down
    drop_table :ponto_diarios
  end
end
