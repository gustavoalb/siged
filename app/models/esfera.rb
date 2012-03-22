class Esfera < ActiveRecord::Base
  has_many :orgaos
  has_many :quadros
  has_many :escolas
  has_many :folhas
  has_many :entidades
end
