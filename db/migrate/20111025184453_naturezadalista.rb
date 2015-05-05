# -*- encoding : utf-8 -*-
class Naturezadalista < ActiveRecord::Migration
  def self.up
    create_table :naturezas_listas, :id => false do |t|
       t.references :natureza, :tipo_listum_id
     end
 end

  def self.down
    drop_table :naturezas_listas
  end
end

