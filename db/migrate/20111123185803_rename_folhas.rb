class RenameFolhas < ActiveRecord::Migration
  def self.up
    rename_table :folhas, :folha_folhas
  end

 def self.down
    rename_table :folha_folhas, :folhas
 end

end
