class RemoveNivelFromFormacaos < ActiveRecord::Migration
  def self.up
    remove_column :formacaos, :nivel
  end

  def self.down
    add_column :formacaos, :nivel, :string
  end
end
