module LotacaosHelper

  def status_l(status)

    if status=='FINALIZADO'
      return true
  else
      return false
  end
end

def magisterio(f)
    if f and f.cargo
        if f.cargo.tipo.nome=='Magistério/Docência'
            return raw(", com disponibilidade de regência inicial até #{f.rsn},&nbsp;<b>fazendo jus à
                regência de classe.</b>")
        else
            return "."
        end
    end
end

def confirmacao(f)
    if f and f.cargo
        if f.cargo.tipo.nome=='Magistério/Docência'
            return raw(", com disponibilidade de regência inicial até #{f.rsn},&nbsp;<b>fazendo jus à
                regência de classe.</b>")
        else
            return "."
        end
    end
end



def destino(lotacao)
   if lotacao
       if lotacao.tipo_lotacao=="ESPECIAL" and !lotacao.departamento.nil? and lotacao.escola.nil?
        return "#{lotacao.departamento.nome}/#{lotacao.orgao.sigla}"
    elsif lotacao.tipo_lotacao=="ESPECIAL" and !lotacao.escola.nil?
        return "#{lotacao.escola.nome_da_escola}/#{lotacao.orgao.sigla}"
    elsif lotacao.tipo_lotacao=="SUMARIA ESPECIAL" and !lotacao.departamento.nil? and lotacao.escola.nil?
        return "#{lotacao.departamento.nome}/#{lotacao.orgao.sigla}"
    elsif lotacao.tipo_lotacao=="SUMARIA ESPECIAL"  and !lotacao.escola.nil? and lotacao.departamento.nil?
        return "#{lotacao.escola.nome_da_escola}/#{lotacao.orgao.sigla}"
    elsif lotacao.tipo_lotacao=="ESPECIAL" and lotacao.escola.nil? and !lotacao.orgao.nil? and lotacao.departamento.nil?
        return "#{lotacao.orgao.nome}"
    elsif lotacao.tipo_lotacao=="SUMARIA ESPECIAL" and lotacao.escola.nil? and !lotacao.orgao.nil? and lotacao.departamento.nil?
        return "#{lotacao.orgao.nome}"
    elsif lotacao.tipo_lotacao=="SUMARIA" or lotacao.tipo_lotacao=="REGULAR" or lotacao.tipo_lotacao=="PROLABORE"
        return "#{lotacao.escola.nome_da_escola}"
    elsif lotacao.escola.nil? and lotacao.orgao.nil? and lotacao.departamento.nil?
        return raw("<b><font color=red>LOTAÇÃO INVÁLIDA</b></font>")
    end
end
end




def destino_ponto(lotacao)
   if lotacao
       if lotacao.tipo_lotacao=="ESPECIAL" and !lotacao.departamento.nil? and lotacao.escola.nil?
        return "#{lotacao.orgao.nome}/#{lotacao.orgao.sigla}"
    elsif lotacao.tipo_lotacao=="ESPECIAL" and !lotacao.escola.nil?
        return "#{lotacao.escola.nome_da_escola}/#{lotacao.orgao.sigla}"
    elsif lotacao.tipo_lotacao=="SUMARIA ESPECIAL" and !lotacao.departamento.nil? and lotacao.escola.nil?
        return "#{lotacao.orgao.nome}/#{lotacao.orgao.sigla}"
    elsif lotacao.tipo_lotacao=="SUMARIA ESPECIAL"  and !lotacao.escola.nil? and lotacao.departamento.nil?
        return "#{lotacao.escola.nome_da_escola}/#{lotacao.orgao.sigla}"
    elsif lotacao.tipo_lotacao=="ESPECIAL" and lotacao.escola.nil? and !lotacao.orgao.nil? and lotacao.departamento.nil?
        return "#{lotacao.orgao.nome}"
    elsif lotacao.tipo_lotacao=="SUMARIA ESPECIAL" and lotacao.escola.nil? and !lotacao.orgao.nil? and lotacao.departamento.nil?
        return "#{lotacao.orgao.nome}"
    elsif lotacao.tipo_lotacao=="SUMARIA" or lotacao.tipo_lotacao=="REGULAR" or lotacao.tipo_lotacao=="PROLABORE"
        return "#{lotacao.escola.nome_da_escola}"
    elsif lotacao.escola.nil? and lotacao.orgao.nil? and lotacao.departamento.nil?
        return raw("<b><font color=red>LOTAÇÃO INVÁLIDA</b></font>")
    end
end
end



end 
