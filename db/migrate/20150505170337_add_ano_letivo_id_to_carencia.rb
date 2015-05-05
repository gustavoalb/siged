# -*- encoding : utf-8 -*-
class AddAnoLetivoIdToCarencia < ActiveRecord::Migration
  def self.up
    add_column :carencias, :ano_letivo_id, :integer
  end

  def self.down
    remove_column :carencias, :ano_letivo_id
  end
end

