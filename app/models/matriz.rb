class Matriz < ActiveRecord::Base
	has_many :curriculos,:foreign_key=>:matriz_id,:dependent=>:destroy
	has_many :disciplinas
	has_many :series
	belongs_to :escola
	belongs_to :entidade
	has_many :turmas
	has_and_belongs_to_many :series,:class_name=>"Serie",:join_table => "colapso_matrizes",:foreign_key=>:matriz_id
	
	
	after_create :criar_curriculo
	after_update :editar_curriculo

	NIVEL=[
		['Ensino Fundamental de 8 anos','FUNDAMENTAL8'],
		['Ensino Fundamental de 9 anos','FUNDAMENTAL9'],
		['Ensino Médio','MEDIO']
	]

	MOD=[
		["1º Segmento","1S"],
		["2º Segmento","2S"]
	]

	def criar_curriculo
		self.series.each do |s|
			s.disciplinas.uniq.each do |d|
				c = self.curriculos.create(:serie_id=>s.id,:disciplina_id=>d.id)
				c.save!
			end
		end
	end

	def editar_curriculo
		curriculos = self.curriculos.find :all,:conditions=>["serie_id not in (?)",self.serie_ids]
		curriculos.each(&:destroy)
		self.series.each do |s|
			s.disciplinas.uniq.each do |d|
				c = self.curriculos.create(:serie_id=>s.id,:disciplina_id=>d.id)
				c.save!
			end
		end
	end

	def remover_settings
		self.settings.delete_all
	end

end
