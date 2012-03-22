class DisciplinaContratacao < ActiveRecord::Base
	#default_scope where('entidade_id in (?)',User.usuario_atual.entidade_ids)
	set_table_name :descricao_cargos
  belongs_to :tipo
  belongs_to :nivel_cargo
  belongs_to :entidade
  has_many :funcionarios
  has_and_belongs_to_many :disciplinas,:class_name=>"Disciplina",:join_table => "disciplinas_habilitacoes"
end
