class EscolaSweeper < ActionController::Caching::Sweeper
	observe Escola
	def after_create(escola)
		expire_cache_for(escola)
	end
	def after_update(escola)
		expire_cache_for(escola)
	end
	def after_destroy(escola)
		expire_cache_for(escola)
	end
	private
	def expire_cache_for(escola)
		expire_page(:controller=>'escolas',:action=>'ctrl_ch_resumido')
		expire_fragment('calcular_demandas')
	end

end