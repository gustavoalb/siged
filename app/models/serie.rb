class Serie < ActiveRecord::Base
include ScopedSearch::Model
  scope :busca, lambda { |q| where("nome like ? or nome like ?" ,"%#{q}%","%#{q}%") }
  has_and_belongs_to_many :matrizes,:join_table => "colapso_matrizes"
  has_many :curriculos
  has_many :disciplinas,:class_name=>"Disciplina",:through => :curriculos
  has_many :turmas
  has_many :escolas,:through=>:turmas,:source=>:escola
  
end
