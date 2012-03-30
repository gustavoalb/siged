module FuncionariosHelper

  def desc(obj)
    if obj
      return obj.nome
    else
      return ""
    end
  end

  def municipio(func)
    if func.municipio and func.distrito and func.distrito.tipo.blank?
      return raw("/#{func.municipio.nome} - #{func.distrito.nome }")
      if func.municipio and func.distrito and !func.distrito.tipo.blank?
        return raw("/#{func.municipio.nome} - #{func.distrito.area} #{func.distrito.nome}")
      elsif func.municipio and func.distrito.nil?
        return raw("/#{func.municipio.nome}")
      else
        return ""
      end
    end

    def localizacao(func)
      texto=""
      if func.lotacoes.nil?
       texto+= "#{func.lotacao_recad}"
     else
      texto+= "#{destino(func.lotacoes.finalizada[-1])}"
    end
    return texto
  end

  def dest(lotacao)
    if lotacao
      if lotacao.tipo_lotacao=="ESPECIAL" and lotacao.escola.nil?
        return "#{lotacao.orgao.nome}"
      elsif lotacao.tipo_lotacao=="ESPECIAL" and lotacao.escola.size>0
        return "#{lotacao.escola.nome_da_escola}/#{lotacao.orgao.nome}"
      else
        return "#{lotacao.escola.nome_da_escola}"

      end
    else
      return "Não lotado"
    end
  end

end
