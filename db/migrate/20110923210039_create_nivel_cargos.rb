class CreateNivelCargos < ActiveRecord::Migration
  def self.up
    create_table :nivel_cargos do |t|
      t.string :nome

      t.timestamps
    end
  end

  def self.down
    drop_table :nivel_cargos
  end
end
