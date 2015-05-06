# -*- encoding : utf-8 -*-
class Carencia < ActiveRecord::Base
	belongs_to :ano_letivo
	#belongs_to :escola
	#belongs_to :disciplina,:class_name=>"DisciplinaContratacao"

	
end

