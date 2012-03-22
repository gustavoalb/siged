module PontoAssinaturasHelper

  def d_assinaturas(tipo,ponto_diario)
    config = ConfiguracaoPonto.last

    #Definindo as Horas de Entrada e saida de acordo com a Configuração
    entrada_manha=config.hora_entrada_manha.to_formatted_s(:time)
    entrada_tarde=config.hora_entrada_tarde.to_formatted_s(:time)
    saida_manha=config.hora_saida_manha.to_formatted_s(:time)
    saida_tarde=config.hora_saida_tarde.to_formatted_s(:time)
    limite_entrada_manha=config.hora_limite_entrada_manha.to_formatted_s(:time)
    limite_saida_manha=config.hora_limite_saida_manha.to_formatted_s(:time)
    limite_entrada_tarde=config.hora_limite_entrada_tarde.to_formatted_s(:time)
    limite_saida_tarde=config.hora_limite_saida_tarde.to_formatted_s(:time)

    #Setando a variável hora_atual com o valor da hora atual
    hora_atual = Time.now.to_formatted_s(:time)
    case tipo
     when 'ENTRADA_MANHA' then

      assinatura=ponto_diario.ponto_assinaturas.do_tipo('ENTRADA_MANHA').do_ano(Time.now.year).do_mes(Time.now.month).do_dia(Time.now.day).first

      if (hora_atual >= entrada_manha or hora_atual <=limite_entrada_manha) and (hora_atual<saida_manha)

            if assinatura.assinado
              return 'Já Assinado'
            else
              return 'ASSINAR_ENTRADA_MANHA'
            end

       else
         if hora_atual > limite_entrada_manha
           return 'Já passa do horário de assinar o ponto de Entrada'
         elsif hora_atual < hora_entrada_manha and config.permitir_hora_extra==true
           return 'ASSINAR_ENTRADA_MANHA'
         elsif hora_atual < hora_entrada_manha and config.permitir_hora_extra==false
           return 'Ainda é cedo para assinar o ponto de Entrada'
         end
       end

     when 'SAIDA_MANHA' then
           assinatura=ponto_diario.ponto_assinaturas.do_tipo('SAIDA_MANHA').do_ano(Time.now.year).do_mes(Time.now.month).do_dia(Time.now.day).first
       if (hora_atual >= saida_manha or hora_atual>=limite_saida_manha) and (hora_atual>limite_entrada_manha and hora_atual<entrada_tarde)

            if assinatura.assinado
              return 'Já Assinado'
            else
              return 'ASSINAR_SAIDA_MANHA 1'
            end

       else
         if (hora_atual < limite_saida_manha)
           return 'Ainda é Cedo para Assinar o Ponto de Saída'
         elsif hora_atual >= saida_manha and config.permitir_hora_extra==true and hora_atual<entrada_tarde
           return 'ASSINAR_SAIDA_MANHA 2'
         elsif hora_atual > saida_manha and config.permitir_hora_extra==false
           return 'Não é Permitido hora Extra'
         else hora_atual > saida_manha and config.permitir_hora_extra==false
           return 'Já Passa da hora de Saida'
         end
       end

     when 'ENTRADA_TARDE' then
            assinatura=ponto_diario.ponto_assinaturas.do_tipo('ENTRADA_TARDE').do_ano(Time.now.year).do_mes(Time.now.month).do_dia(Time.now.day).first
     if Time.now.hour < 15 and Time.now.hour >=13
        if assinatura.assinado
          return 'Já Assinado'
        else
          return 'ASSINAR'
        end

       else
        return 'JÁ PASSA DO HORÁRIO DE ASSINAR'
       end

     when 'SAIDA_TARDE' then

      assinatura=ponto_diario.ponto_assinaturas.do_tipo('SAIDA_TARDE').do_ano(Time.now.year).do_mes(Time.now.month).do_dia(Time.now.day).first
       if Time.now.hour < 20 and Time.now.hour >=15
        if assinatura.assinado
          return 'Já Assinado'
        else
          return 'ASSINAR'
        end

       else
        return 'JÁ PASSA DO HORÁRIO DE ASSINAR'
       end
    end

  end

  def detalhes_ponto
    html=""
    config = ConfiguracaoPonto.last

    #Definindo as Horas de Entrada e saida de acordo com a Configuração
    entrada_manha=config.hora_entrada_manha.to_formatted_s(:time)
    entrada_tarde=config.hora_entrada_tarde.to_formatted_s(:time)
    saida_manha=config.hora_saida_manha.to_formatted_s(:time)
    saida_tarde=config.hora_saida_tarde.to_formatted_s(:time)
    limite_entrada_manha=config.hora_limite_entrada_manha.to_formatted_s(:time)
    limite_saida_manha=config.hora_limite_saida_manha.to_formatted_s(:time)
    limite_entrada_tarde=config.hora_limite_entrada_tarde.to_formatted_s(:time)
    limite_saida_tarde=config.hora_limite_saida_tarde.to_formatted_s(:time)

    #Setando a variável hora_atual com o valor da hora atual
    hora_atual = Time.now.to_formatted_s(:time)
    html+="<b>Hora Atual:</b> #{hora_atual}<br/><br/>"
    html+="<b>Entrada da Manhã:</b> #{entrada_manha}<br/><b>Saída da Manhã:</b> #{saida_manha}<br/><b>Limite Entrada Manhã:</b> #{limite_entrada_manha}<br/><b>Limite Saída Manhã:</b> #{limite_saida_manha}<br/>"
    html+="<b>Entrada da Tarde:</b> #{entrada_tarde}<br/><b>Saída da Tarde:</b> #{saida_tarde}<br/><b>Limite Entrada Tarde:</b> #{limite_entrada_tarde}<br/><b>Limite Saída Tarde:</b> #{limite_saida_tarde}<br/>"
    return raw(html)
  end
end
