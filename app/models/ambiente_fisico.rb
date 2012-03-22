class AmbienteFisico < ActiveRecord::Base
	belongs_to :matriz
	belongs_to :serie
	belongs_to :escola
	belongs_to :entidade
	has_many :ambientes


	TIPO=[
['Tv Escola','TVESCOLA'],
['Teleposto','TELEPOSTO'],
['Laboratório de Informática','LIED'],
['Sala de Leitura','SALADELEITURA'],
['Biblioteca','BIBLIOTECA'],
['Ensino Especial','ENSINOESPECIAL'],
]

end
