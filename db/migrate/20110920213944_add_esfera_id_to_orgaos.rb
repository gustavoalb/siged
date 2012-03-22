class AddEsferaIdToOrgaos < ActiveRecord::Migration
  def self.up
    add_column :orgaos, :esfera_id, :integer
  end

  def self.down
    remove_column :orgaos, :esfera_id
  end
end
