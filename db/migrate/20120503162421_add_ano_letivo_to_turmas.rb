# -*- encoding : utf-8 -*-
class AddAnoLetivoToTurmas < ActiveRecord::Migration
  def self.up
    add_column :turmas, :ano_letivo_id, :integer
  end

  def self.down
    remove_column :turmas, :ano_letivo_id
  end
end

