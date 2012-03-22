module Folha::FinanceirosHelper
	def obs(o)
		if !o.blank?
			return raw("&nbsp; (#{o})")
		end
	end
end
