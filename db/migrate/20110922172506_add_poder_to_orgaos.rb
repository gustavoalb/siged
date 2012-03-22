class AddPoderToOrgaos < ActiveRecord::Migration
  def self.up
    add_column :orgaos, :poder_id, :integer
    add_column :orgaos, :tipo_administracao_id, :integer
  end

  def self.down
    remove_column :orgaos, :tipo_administracao_id
    remove_column :orgaos, :poder_id
  end
end
