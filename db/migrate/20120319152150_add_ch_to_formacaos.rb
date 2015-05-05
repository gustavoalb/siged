# -*- encoding : utf-8 -*-
class AddChToFormacaos < ActiveRecord::Migration
  def self.up
    add_column :formacaos, :carga_horaria, :integer
  end

  def self.down
    remove_column :formacaos, :carga_horaria
  end
end

