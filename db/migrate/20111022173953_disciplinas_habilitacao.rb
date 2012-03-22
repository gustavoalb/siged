class DisciplinasHabilitacao < ActiveRecord::Migration
  def self.up
    create_table :disciplinas_habilitacoes, :id => false do |t|
       t.references :disciplina, :descricao_cargo
  end
 end

  def self.down
    drop_table :disciplinas_habilitacoes
  end
end
