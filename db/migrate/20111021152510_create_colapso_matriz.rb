class CreateColapsoMatriz < ActiveRecord::Migration
def self.up
    create_table :colapso_matrizes, :id => false do |t|
       t.references :matrize, :serie
       t.references :matrize,:disciplina
  end
 end

  def self.down
    drop_table :colapso_matrizes
  end
end
