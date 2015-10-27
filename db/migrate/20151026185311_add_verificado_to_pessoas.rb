class AddVerificadoToPessoas < ActiveRecord::Migration
  def self.up
    add_column :pessoas, :verificado, :boolean
  end

  def self.down
    remove_column :pessoas, :verificado
  end
end
