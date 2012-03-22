class AddEsferaToEscola < ActiveRecord::Migration
  def self.up
    add_column :escolas, :esfera_id, :integer
  end

  def self.down
    remove_column :escolas, :esfera_id
  end
end
