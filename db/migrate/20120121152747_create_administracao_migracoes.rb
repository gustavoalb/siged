class CreateAdministracaoMigracoes < ActiveRecord::Migration
  def self.up
    create_table :administracao_migracoes do |t|
      t.integer :entidade_id
      t.string :tipo
      t.integer :numero_registros
      t.integer :contador
      t.string :origem
      t.string :motivo
      t.string :migracao

      t.timestamps
    end
  end

  def self.down
    drop_table :administracao_migracoes
  end
end
