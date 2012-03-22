class TipoDestino < ActiveRecord::Base
  has_many :escolas
  has_many :orgaos
  has_many :departamentos
end
