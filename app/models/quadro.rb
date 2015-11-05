# -*- encoding : utf-8 -*-
class Quadro < ActiveRecord::Base
  has_many :funcionarios
  has_many :folhas,:class_name=>"Folha::Folha"
  belongs_to :esfera
  belongs_to :poder

  scope :busca, lambda { |q| where("codigo like ? or nome like ?" ,"%#{q}%","%#{q}%") }
end
