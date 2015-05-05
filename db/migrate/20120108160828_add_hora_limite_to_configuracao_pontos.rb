# -*- encoding : utf-8 -*-
class AddHoraLimiteToConfiguracaoPontos < ActiveRecord::Migration
  def self.up
    add_column :configuracao_pontos, :hora_limite_entrada_manha, :datetime
    add_column :configuracao_pontos, :hora_limite_saida_manha, :datetime
    add_column :configuracao_pontos, :hora_limite_entrada_tarde, :datetime
    add_column :configuracao_pontos, :hora_limite_saida_tarde, :datetime
  end

  def self.down
    remove_column :configuracao_pontos, :hora_limite_saida_tarde
    remove_column :configuracao_pontos, :hora_limite_entrada_tarde
    remove_column :configuracao_pontos, :hora_limite_saida_manha
    remove_column :configuracao_pontos, :hora_limite_entrada_manha
  end
end

