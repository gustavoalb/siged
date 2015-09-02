class CreateFuncionariosGratificacoes < ActiveRecord::Migration
   def self.up
    create_table :funcionarios_gratificacoes, :id => false do |t|
      t.references :funcionario, :gratificacao
    end
  end

  def self.down
    drop_table :funcionarios_gratificacoes
  end
end
