# -*- encoding : utf-8 -*-
module SettingsHelper

  def nome_codigo(obj)
    if !obj.nil? and obj.tipo_config=="DIRECAO"
      return obj.diretor.pessoa.nome
    elsif !obj.nil? and obj.tipo_config=="MATRIZ"
      return obj.matriz.codigo
    elsif !obj.nil? and obj.tipo_config=="ANOLETIVO"
      return ""

    end
  end

end

