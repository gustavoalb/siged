class AddRubricaToGratificacoes < ActiveRecord::Migration
  def self.up
    add_column :gratificacoes, :rubrica, :string
  end

  def self.down
    remove_column :gratificacoes, :rubrica
  end
end
