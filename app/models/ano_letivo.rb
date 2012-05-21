class AnoLetivo < ActiveRecord::Base
    validates_presence_of :ano,:on=>:create
    has_many :turmas
    has_many :escolas

    validate_on_create do |ano_letivo|
    	if self.inicio.year>Date.today.year and self.inicio.month<=10
    		ano_letivo.errors.add_to_base("O Ano Letivo do ano seguinte só pode ser criado a partir de Outubro do ano corrente.")
    	end
    end

end
