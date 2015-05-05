# -*- encoding : utf-8 -*-
class AddDecretoToProcessos < ActiveRecord::Migration
  def self.up
    add_column :processos, :decreto_nomeacao_comissao, :string
    add_column :processos, :data_decreto_nomeacao, :date
    add_column :processos, :data_decreto_exoneracao, :date
    add_column :processos, :decreto_exoneracao_comissao, :string
  end

  def self.down
    remove_column :processos, :decreto_exoneracao_comissao
    remove_column :processos, :data_decreto_exoneracao
    remove_column :processos, :data_decreto_nomeacao
    remove_column :processos, :decreto_nomeacao_comissao
  end
end

