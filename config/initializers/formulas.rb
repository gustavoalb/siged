module FormulasFolha

  # Fórmula para a Soma de Eventos de determinados tipos
  # Os Tipos de Eventos Possíveis são:
  # #Vencimento
  def ACUMULO_EVENTO(tipo)
    case tipo.downcase
      when 'remuneracao_basica' then
        self.matricula
      else
         raise ArgumentError, "Tipo de Evento Inválido: #{tipo}"
      end
      se
    #return valor
  end



end

module UpActive
  def testar_relacionamento(atributo)
    valor = atributo[atributo.size-3,3]
    if valor=='_id'
      return true
        else
      return false
    end
  end
end


  Object.send(:include, FormulasFolha)
  Class.send(:include,UpActive)
#String.send(:include, CalculosFolha)
