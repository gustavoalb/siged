# -*- encoding : utf-8 -*-
class AddInstituicaoToFormacaos < ActiveRecord::Migration
  def self.up
    add_column :formacaos, :instituicao, :string
  end

  def self.down
    remove_column :formacaos, :instituicao
  end
end

