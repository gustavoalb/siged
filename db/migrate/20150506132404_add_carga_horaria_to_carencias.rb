class AddCargaHorariaToCarencias < ActiveRecord::Migration
  def self.up
    add_column :carencias, :carga_horaria, :string
  end

  def self.down
    remove_column :carencias, :carga_horaria
  end
end
