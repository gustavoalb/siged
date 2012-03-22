class AddColLotacao < ActiveRecord::Migration
  def self.up
        add_column :lotacaos,:ativo,:boolean,:default=>true
  end

  def self.down
        remove_colum :lotacaos,:ativo
  end
end

