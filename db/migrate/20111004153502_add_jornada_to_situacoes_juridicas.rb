class AddJornadaToSituacoesJuridicas < ActiveRecord::Migration
  def self.up
    add_column :situacoes_juridicas, :jornada, :integer
  end

  def self.down
    remove_column :situacoes_juridicas, :jornada
  end
end
