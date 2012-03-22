class CreateTipoAmbientes < ActiveRecord::Migration
  def self.up
    create_table :tipo_ambientes do |t|
      t.string :nome
      t.string :tipo_especificacao,:limit=>1

      t.timestamps
    end
  end

  def self.down
    drop_table :tipo_ambientes
  end
end
