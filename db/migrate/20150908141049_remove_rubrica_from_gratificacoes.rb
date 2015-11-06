# -*- encoding : utf-8 -*-
class RemoveRubricaFromGratificacoes < ActiveRecord::Migration
  def self.up
    remove_column :gratificacoes, :rubrica
  end

  def self.down
    add_column :gratificacoes, :rubrica, :integer
  end
end
