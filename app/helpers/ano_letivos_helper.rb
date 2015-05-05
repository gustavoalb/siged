# -*- encoding : utf-8 -*-
module AnoLetivosHelper

	def ano_config(escola,ano_letivo)
    if escola.anos_letivos.size >0 
    	html="#{link_to 'Configurações', escola_ano_letivo_settings_path(escola,ano_letivo)}"

    else
    	html="#{link_to 'incluir ano letivo',new_escola_ano_letivo_path(escola),:rel=>'facebox',:rev=>'height:300px;width:500px'}"

    end
    return raw(html)
    end
end

