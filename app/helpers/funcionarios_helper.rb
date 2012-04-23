module FuncionariosHelper

  def desc(obj)
    if obj
      return obj.nome
    else
      return ""
    end
  end

  def turmas(f)
    t = []
    if f and !f.especificacoes.none?
      f.especificacoes.each do |e|
        if !e.turma.nil?
          t << e.turma.nome
        elsif e.turma.nil? and !e.ambiente.nil?
          t << e.ambiente.nome
        end
      end
    end
    if !t.none?
      return raw("O funcionário está especificado em #{pluralize(t.count,'turma','turmas')}: #{t.to_sentence}.")
    else
      return raw("O funcionário não está especificado em nenhum ambiente!")
    end
  end

  def cor_rsd(funcionario)
    if funcionario.rsn==12
     if funcionario.rsd <=4
       return raw("<font color=blue> #{funcionario.rsd} </font>")
     else
       return raw("<font color=red> #{funcionario.rsd} </font>")
     end
   elsif funcionario.rsn==24
    if funcionario.rsd <=4
     return raw("<font color=blue> #{funcionario.rsd} </font>")
   else
     return raw("<font color=red> #{funcionario.rsd} </font>")
   end
 end
end




def municipio(func)
  if func.municipio and func.distrito and func.distrito.tipo.blank?
    return raw("/#{func.municipio.nome} - #{func.distrito.nome }")
  elsif func.municipio and func.distrito and !func.distrito.tipo.blank?
    return raw("/#{func.municipio.nome} - #{func.distrito.tipo} #{func.distrito.nome}")
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
