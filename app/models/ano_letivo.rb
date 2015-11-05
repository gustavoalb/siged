# -*- encoding : utf-8 -*-
class AnoLetivo < ActiveRecord::Base
  validates_presence_of :ano,:on=>:create
  has_many :turmas
  has_many :escolas
  has_many :carencias
  accepts_nested_attributes_for :carencias

  validate :on=>:create do |ano_letivo|
    if self.inicio.year>Date.today.year and Date.today.month<=10
      ano_letivo.errors.add_to_base("O Ano Letivo do ano seguinte só pode ser criado a partir de Outubro do ano corrente.")
    end
  end

end
