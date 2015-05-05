# -*- encoding : utf-8 -*-
module AmbientesHelper

	def config_ambiente(escola,ambiente)
	  html=""
	  case ambiente.tipo_ambiente.tipo_especificacao
	     when "E"
         html+="#{link_to 'Incluir Turma',escola_ambiente_incluir_turma_path(escola,ambiente),{:class=>'alt_btn',:remote=>true}}"
          when "J"
         html+="#{link_to 'Incluir Sala',escola_ambiente_incluir_ambiente_fisico_path(escola,ambiente),{:class=>'alt_btn',:remote=>true}}"
      end  
      return raw(html)
	end



	def config_ambiente_tipo(escola,ambiente)
	  html=""
	  case ambiente.tipo_ambiente.tipo_especificacao
	     when "E"
         html+="#{link_to 'Configurar Ambiente',escola_ambiente_configurar_ambiente_path(@escola,ambiente)}"
          when "J"
         html+="#{link_to 'Configurar Ambiente',escola_ambiente_configurar_ambiente_fisico_path(@escola,ambiente)}"

      end  
      return raw(html)
	end
     
end

