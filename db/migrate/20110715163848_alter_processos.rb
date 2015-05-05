# -*- encoding : utf-8 -*-
class AlterProcessos < ActiveRecord::Migration
  def self.up
    add_column :processos,:lotacao_id,:integer
  end

  def self.down
    remove_column :processos,:lotacao_id
  end
end

