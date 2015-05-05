# -*- encoding : utf-8 -*-
class Num
def numero(id)
    num=id.to_s
      case num.size
        when 1 then cod="0000000#{num}"
        when 2 then cod="000000#{num}"
        when 3 then cod="00000#{num}"
        when 4 then cod="0000#{num}"
        when 5 then cod="000#{num}"
        when 6 then cod="00#{num}"
        when 7 then cod="0#{num}"
        when 8 then cod="#{num}"
    else
      raise "Número Ultrapassa o Limite permitido: #{num}"
    end
    return cod
end



def numero_cancelamento(lotacao,processo)
    cod=(lotacao.to_s+''+processo.to_s).to_s
    a = AutoNum.new
    a.tipo = 'CANCELAMENTO'
    a.save
    num = a.id.to_s+''+cod
      case num.size
        when 1
          then
          cod="0000000#{num}"
        when 2
          then
          cod="000000#{num}"
        when 3
          then
          cod="00000#{num}"
        when 4
          then
          cod="0000#{num}"
        when 5
          then
          cod="000#{num}"
        when 6
          then
          cod="00#{num}"
        when 7
          then
          cod="0#{num}"
        when 8
          then
          cod="#{num}"
    else
      raise "Número Ultrapassa o Limite permitido: #{num}"
    end
    return cod
end


end


