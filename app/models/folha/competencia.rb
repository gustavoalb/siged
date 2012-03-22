class Folha::Competencia < ActiveRecord::Base
  include ScopedSearch::Model
  scope :busca, lambda { |q| where("nome like ? or nome like ?" ,"%#{q}%","%#{q}%") }
  has_many :folhas,:class_name=>'Folha::Folha'
end
