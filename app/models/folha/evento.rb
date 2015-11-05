# -*- encoding : utf-8 -*-
class Folha::Evento < ActiveRecord::Base
  scope :busca, lambda { |q| where("nome like ? or nome like ?" ,"%#{q}%","%#{q}%") }
  after_create :setar_tipo
  private

  def setar_tipo
    case self.codigo[0,1]
    when '1' then self.tipo = 'V'
    when '2' then self.tipo = 'D'
    when '3' then self.tipo = 'E'
    when '4' then self.tipo = 'C'
    end
    self.save
  end
end
