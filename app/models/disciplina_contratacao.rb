# -*- encoding : utf-8 -*-
class DisciplinaContratacao < ActiveRecord::Base
	#default_scope where('entidade_id in (?)',User.usuario_atual.entidade_ids)

	set_table_name :descricao_cargos
	include ScopedSearch::Model
	scope :busca, lambda { |q| where("codigo ilike ? or nome ilike ?" ,"%#{q}%","%#{q}%") }
	belongs_to :tipo
	belongs_to :nivel_cargo
	belongs_to :entidade
	has_many :funcionarios
	has_many :lotacoes,:foreign_key=>"disciplina_atuacao_id"
	has_and_belongs_to_many :disciplinas,:class_name=>"Disciplina",:join_table => "disciplinas_habilitacoes"
end

