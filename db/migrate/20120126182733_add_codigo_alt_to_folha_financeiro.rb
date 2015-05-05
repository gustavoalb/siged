# -*- encoding : utf-8 -*-
class AddCodigoAltToFolhaFinanceiro < ActiveRecord::Migration
  def self.up
    add_column :folha_financeiros, :codigo_alt, :string,:limit=>1
  end

  def self.down
    remove_column :folha_financeiros, :codigo_alt
  end
end

