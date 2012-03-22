class AlterColapso < ActiveRecord::Migration
def self.up
  drop_table :colapso_matrizes
    create_table :colapso_matrizes, :id => false do |t|
       t.references :matriz, :serie
       t.references :matriz,:disciplina
  end
 end

  def self.down
    drop_table :colapso_matrizes
  end
end
