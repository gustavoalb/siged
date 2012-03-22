class AddLotacaosToEscolas < ActiveRecord::Migration
  def self.up
    add_column :escolas, :lotacao_id, :integer
  end

  def self.down
    remove_column :escolas, :lotacao_id
  end
end
