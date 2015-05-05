# -*- encoding : utf-8 -*-
module Calculo


    def calcular_folha
      #seta os parametros ano e mês...
      ano = self.ano
      mes = self.mes

      #verifica se a folha pode ser calculada
      if self.ativa = true

         self.logger.warn("Preparando para Calcular")

          #faz a varredura em todos os funcionarios da Folha Atual
          funcionarios = Funcionario.find :all,:limit=>10
          funcionarios.each do |f|

            #verifica se o Funcionário possue Referencia Nivel e Situação Jurídica
            if f.sjuridica

               if f.nivel

                  #começo do Cálculo
                  if f.financeiro_fixo.size>0
                    f.logger.warn("Calculo OK")

                  else
                     f.financeiro_fixo.create(:ano=>2011,:mes=>12,:evento_id=>f.sjuridica.evento_vencimento_id, :prazo=>0, :parametro=>0, :quantidade=>0,:valor=>f.nivel.vencimento.valor)
                  end



               else
                  f.logger.warn("Funcionario Sem Referência Nível")
               end


            else
               f.logger.warn("Funcionario Sem Situação Jurídica")
            end


          end


      #se não puder ser calculada emite um aviso.
      else
          self.logger.warn("A Folha já está homologada, impossível calcular")
      end #fim verificacao se a folha pode ser calculada


    end

end

Folha::Folha.send(:include, Calculo)

