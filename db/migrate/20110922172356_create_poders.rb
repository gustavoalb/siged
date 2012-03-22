class CreatePoders < ActiveRecord::Migration
  def self.up
    create_table :poders do |t|
      t.string :codigo
      t.string :nome

      t.timestamps
    end
  Poder.create(:nome=>"Executivo",:codigo=>"EXE")
  Poder.create(:nome=>"Legislativo",:codigo=>"LEG")
  Poder.create(:nome=>"Executivo",:codigo=>"JUD")
  end

  def self.down
    drop_table :poders
  end
end
