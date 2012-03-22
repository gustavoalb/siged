class UpdateAmbientes < ActiveRecord::Migration
	def self.up
		User.usuario_atual = User.find 1
		Ambiente.delete_all
		Escola.all.each do |e|
			e.ambientes.create(:nome=>'Sala de Aula',:tipo_ambiente_id=>1,:entidade_id=>1)
			e.ambientes.create(:nome=>'LIED',:tipo_ambiente_id=>4,:entidade_id=>1)
			e.ambientes.create(:nome=>'LIED - Ensino Especial',:tipo_ambiente_id=>4,:entidade_id=>1)
			e.ambientes.create(:nome=>'Sala de Leitura',:tipo_ambiente_id=>4,:entidade_id=>1)
			e.ambientes.create(:nome=>'Projetos',:tipo_ambiente_id=>4,:entidade_id=>1)
			e.ambientes.create(:nome=>'Programa Mais Educação',:tipo_ambiente_id=>4,:entidade_id=>1)
			e.ambientes.create(:nome=>'Sala de Ensino Especial',:tipo_ambiente_id=>4,:entidade_id=>1)
			e.ambientes.create(:nome=>'TV Escola',:tipo_ambiente_id=>4,:entidade_id=>1)
			e.ambientes.create(:nome=>'Biblioteca',:tipo_ambiente_id=>4,:entidade_id=>1)
		end
	end

	def self.down
	end
end
