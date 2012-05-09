class AddSiglaToEntidades < ActiveRecord::Migration
  def self.up
    add_column :entidades, :sigla, :string
  end

  def self.down
    remove_column :entidades, :sigla
  end
end
