class Cidade < ActiveRecord::Base
  has_many :escolas
  has_many :funcionarios
end
