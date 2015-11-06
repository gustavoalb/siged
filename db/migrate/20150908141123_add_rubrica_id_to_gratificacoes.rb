# -*- encoding : utf-8 -*-
class AddRubricaIdToGratificacoes < ActiveRecord::Migration
  def self.up
    add_column :gratificacoes, :rubrica_id, :integer
  end

  def self.down
    remove_column :gratificacoes, :rubrica_id
  end
end
