class CreateAdministracaoTarefas < ActiveRecord::Migration
  def self.up
    create_table :administracao_tarefas do |t|
      t.string :tipo
      t.date :data
      t.boolean :executado

      t.timestamps
    end
  end

  def self.down
    drop_table :administracao_tarefas
  end
end
