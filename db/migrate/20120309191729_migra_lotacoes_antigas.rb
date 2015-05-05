# -*- encoding : utf-8 -*-
class MigraLotacoesAntigas < ActiveRecord::Migration
	def self.up
		User.usuario_atual = User.find 1

		LotacaoAntiga.all.each do |l|
			if !l.funcionario.nil?
			f = Funcionario.find_by_matricula(l.funcionario.matricula)
			if f
				f.lotacoes.create(:funcionario_id=>f.id,:escola_id=>l.escola_id,:data_lotacao=>l.data_lotacao,:tipo_lotacao=>l.tipo_lotacao,:orgao_id=>l.orgao_id,:departamento_id=>l.departamento_id,:esfera_id=>l.esfera_id,:tipo_destino_id=>l.tipo_destino_id)
			end
		end
	end
end

	def self.down
	end
end

