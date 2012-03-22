class AddCodigoToFonteRecurso < ActiveRecord::Migration
  def self.up
    add_column :folha_fonte_recursos, :codigo, :string
  end

  def self.down
    remove_column :folha_fonte_recursos, :codigo
  end
end
