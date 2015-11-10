# -*- encoding : utf-8 -*-
module RequisicoesHelper
	def periodo(p)
		return "#{t p.inicio.strftime('%B')} - #{t p.fim.strftime('%B')}"
	end
end

