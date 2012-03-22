class Tipo < ActiveRecord::Base
  has_many :cargos
  has_many :descricao_cargos
end
