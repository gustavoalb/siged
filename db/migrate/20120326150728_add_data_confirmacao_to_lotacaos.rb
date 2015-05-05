# -*- encoding : utf-8 -*-
class AddDataConfirmacaoToLotacaos < ActiveRecord::Migration
  def self.up
    add_column :lotacaos, :data_confirmacao, :date
  end

  def self.down
    remove_column :lotacaos, :data_confirmacao
  end
end

