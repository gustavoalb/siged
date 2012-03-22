class AddCodigoToEsferas < ActiveRecord::Migration
  def self.up
    add_column :esferas, :codigo, :string
  end

  def self.down
    remove_column :esferas, :codigo
  end
end
