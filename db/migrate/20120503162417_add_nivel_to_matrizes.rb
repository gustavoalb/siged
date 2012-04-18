class AddNivelToMatrizes < ActiveRecord::Migration
  def self.up
    add_column :matrizes, :nivel_id, :integer
  end

  def self.down
    remove_column :matrizes, :nivel_id
  end
end
