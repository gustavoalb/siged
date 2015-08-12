class AddUsuarioToPessoa < ActiveRecord::Migration
  def self.up
    add_column :pessoas, :usuario_id, :integer
  end

  def self.down
    remove_column :pessoas, :usuario_id
  end
end
