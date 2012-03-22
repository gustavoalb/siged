class CreateTipoAdministracaos < ActiveRecord::Migration
  def self.up
    create_table :tipo_administracaos do |t|
      t.string :codigo
      t.string :nome

      t.timestamps
    end
  end

  def self.down
    drop_table :tipo_administracaos
  end
end
