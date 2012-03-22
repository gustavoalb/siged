class Enquete < ActiveRecord::Base
	validates_presence_of :tipo,:sujeito
	validates_uniqueness_of :sujeito,:scope=>[:comentario_um,:comentario_dois,:opiniao_um,:opiniao_dois]
	scope :antes,where(:tipo=>'ANTES')
	scope :depois,where(:tipo=>'DEPOIS')


	define_statistic :quantidade, :count => :all

  define_calculated_statistic :porcentagem_antes do
  	if defined_stats(:quantidade)>0 and self.antes.count>0
    defined_stats(:quantidade) * 100 / self.antes.count.to_f
else
	0
end
  end

   define_calculated_statistic :porcentagem_depois do
  	if defined_stats(:quantidade)>0 and self.depois.count>0
    defined_stats(:quantidade) * 100 / self.depois.count.to_f
else
	0
end
  end


	filter_all_stats_on(:ocasiao, "tipo ilike ?")
	filter_all_stats_on(:sujeito, "sujeito = ?")
	filter_all_stats_on(:conceito_um, "opiniao_um = ?")
	filter_all_stats_on(:conceito_dois, "opiniao_dois = ?")




	SUJEITO=[
		['Diretor','DIRETOR'],
		['Diretor Adjunto','DIRETOR ADJUNTO'],
		['Representante do Diretor','REPRESENTANTE'],
		['Secretário Escolar','SECRETARIO']
	]
end
