# -*- encoding : utf-8 -*-
class AddComissoesToPontos < ActiveRecord::Migration
  def self.up
    add_column :pontos, :comissionado_id, :integer
  end

  def self.down
    remove_column :pontos, :comissionado_id
  end
end

