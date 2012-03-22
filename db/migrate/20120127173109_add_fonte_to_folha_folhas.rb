class AddFonteToFolhaFolhas < ActiveRecord::Migration
  def self.up
    add_column :folha_folhas, :fonte_recurso_id, :integer
  end

  def self.down
    remove_column :folha_folhas, :fonte_recurso_id
  end
end
