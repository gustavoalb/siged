class UpdateLotacoesUsuario < ActiveRecord::Migration
	def self.up
		Lotacao.all.each do |l|
			if l.usuario.blank? or l.usuario=="admin"
				l.usuario = "lucilene"
				l.save!
			end
			l.usuario_id = User.find_by_username(l.usuario)
			l.save!
		end
	end

	def self.down
	end
end
