class CreateEsferas < ActiveRecord::Migration
  def self.up
    create_table :esferas do |t|
      t.string :nome

      t.timestamps
    end
  Esfera.create(:nome => 'Estadual')
  Esfera.create(:nome => 'Municipal')
  Esfera.create(:nome => 'Federal')
  Esfera.create(:nome => 'Privada')
  Esfera.create(:nome => 'Paraestatal')
  end

  def self.down
    drop_table :esferas
  end
end
