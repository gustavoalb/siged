class CreateFolhaCompetencias < ActiveRecord::Migration
  def self.up
    create_table :folha_competencias do |t|
      t.string :nome
      t.string :motivo
      t.boolean :padrao

      t.timestamps
    end
  end

  def self.down
    drop_table :folha_competencias
  end
end
