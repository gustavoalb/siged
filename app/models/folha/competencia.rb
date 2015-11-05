# -*- encoding : utf-8 -*-
class Folha::Competencia < ActiveRecord::Base
  scope :busca, lambda { |q| where("nome like ? or nome like ?" ,"%#{q}%","%#{q}%") }
  has_many :folhas,:class_name=>'Folha::Folha'
end
