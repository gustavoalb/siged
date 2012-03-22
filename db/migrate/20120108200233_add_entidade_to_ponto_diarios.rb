class AddEntidadeToPontoDiarios < ActiveRecord::Migration
  def self.up
    add_column :ponto_diarios, :entidade_id, :integer
  end

  def self.down
    remove_column :ponto_diarios, :entidade_id
  end
end
