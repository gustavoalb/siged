class CreateTurmas < ActiveRecord::Migration
  def self.up
    create_table :turmas do |t|
      t.integer :ambiente_id
      t.integer :matrize_id
      t.integer :serie_id
      t.string :turno
      t.integer :escola_id,:references=>:escolas

      t.timestamps
    end
  end

  def self.down
    drop_table :turmas
  end
end
