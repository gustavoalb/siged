class Ambiente < ActiveRecord::Base
	include ScopedSearch::Model
	default_scope where('entidade_id in (?)',User.usuario_atual.entidade_ids)
	belongs_to :tipo_ambiente
	belongs_to :entidade
	belongs_to :ano_letivo,:class_name=>"Setting",:foreign_key => "setting_id",:conditions=>["settings.tipo_config=?","ANOLETIVO"]
	has_many :turmas

	scope :busca, lambda { |q| where("nome like ? or nome like ?" ,"%#{q}%","%#{q}%") }


	scope :ambientes_educacionais,joins("join tipo_ambientes on tipo_ambientes.tipo_especificacao = 'E'")	
	scope :salas_ambiente,joins("join tipo_ambientes on tipo_ambientes.tipo_especificacao = 'J'")
	end

