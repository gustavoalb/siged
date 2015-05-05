# -*- encoding : utf-8 -*-
class Administracao::Log < ActiveRecord::Base

	def self.logger(log_texto,usuario,tipo)
       log = Administracao::Log.new
       log.log=log_texto 
       log.user_id=usuario
       log.data = Time.now.to_date
       log.tipo=tipo
       log.save
	end
end

