class ReferenciaNivel < ActiveRecord::Base
	#default_scope where('entidade_id in (?)',User.usuario_atual.entidade_ids)
	include ScopedSearch::Model
	scope :busca, lambda { |q| where("codigo ilike ? or nome ilike ?" ,"%#{q}%","%#{q}%") }
	has_many :funcionarios,:foreign_key=>"nivel_id"
	has_one :vencimento,:readonly=>true,:conditions=>["atual = ?",true]
	has_many :vencimentos
	belongs_to :entidade

	JORNADA=[
		["20 Horas Semanais",20],
		["40 Horas Semanais",40]
	]


end
