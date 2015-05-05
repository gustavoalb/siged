# -*- encoding : utf-8 -*-
module EnquetesHelper
	def resposta(obj)
		if obj=='OTIMAS'
			return raw('<font color=green>Ótimo</font>')
		elsif obj=='BOAS'
			return raw('<font color=blue>Bom</font>')
		elsif obj=='PESSIMAS'
			return raw('<font color=red>Péssimo</font>')
		elsif obj=='OPINIAO'
			return raw('<font color=grey>Sem opinião formada</font>')
		elsif obj=='ANTES'
			return raw('Antes da reunião')
		elsif obj=='DEPOIS'
			return raw('Depois da reunião')
		elsif obj=='REPRESENTANTE'
			return raw('Representante do Diretor')
		elsif obj=='SECRETÁRIO'
			return raw('Representante do Diretor')
		else
			return obj.titleize
		end
	end


end

