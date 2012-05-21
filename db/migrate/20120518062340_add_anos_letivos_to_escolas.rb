class AddAnosLetivosToEscolas < ActiveRecord::Migration
  def self.up
    add_column :escolas, :ano_letivo_id, :integer
  end

  def self.down
    remove_column :escolas, :ano_letivo_id
  end
end
