# -*- encoding : utf-8 -*-
class Municipio < ActiveRecord::Base
  scope :busca, lambda { |q| where("nome like ? or sigla like ? or cep like ?" ,"%#{q}%","%#{q}%","%#{q}%") }
  has_many :funcionarios
  has_many :distritos
  has_many :escolas
end
