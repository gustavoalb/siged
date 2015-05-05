# -*- encoding : utf-8 -*-
module FormacaosHelper

	def titulo_formacao(f)
		if f.titulo and !f.curso.blank?
			return raw("#{f.titulo.nome} em #{f.curso}")
		elsif f.titulo.blank? and !f.curso.blank? and f.subtipo
			return raw("#{f.curso} - #{f.subtipo.nome}")
		elsif f.titulo.blank? and !f.curso.blank? and f.subtipo.blank?
			return raw("#{f.nivel.nome} #{f.status}")
		end
	end

	def nome_curso(f)
		if !f.nivel.nil? and !f.curso.blank?
			return raw("#{f.nivel.nome} em #{f.curso}")
		elsif !f.nivel.nil? and f.curso.blank?
			return raw("#{f.nivel} #{f.status}")
		end
	end 
end

