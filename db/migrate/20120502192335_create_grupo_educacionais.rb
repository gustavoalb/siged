class CreateGrupoEducacionais < ActiveRecord::Migration
  def self.up
    create_table :grupo_educacionais do |t|
      t.string :nome

      t.timestamps
    end
  end

  def self.down
    drop_table :grupo_educacionais
  end
end
