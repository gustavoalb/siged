class Requisicao < ActiveRecord::Base
  attr_accessible :funcionario_id, :periodo_id, :status, :tipo_requisicao
end
