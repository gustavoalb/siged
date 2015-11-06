# -*- encoding : utf-8 -*-
class Requisicao < ActiveRecord::Base
  attr_accessible :funcionario_id, :periodo_id, :status, :tipo_requisicao,:funcionario_attributes,:pessoa_attributes
  scope :do_funcionario, lambda {|id|where("funcionario_id = ?",id) }
  belongs_to :funcionario,:inverse_of=>:requisicoes
  has_one :pessoa,:through=>:funcionario
  belongs_to :periodo
  belongs_to :lotacao,:polymorphic=>true
  validates_presence_of :tipo_requisicao,:periodo_id,:message=>"Informação Necessária"
  accepts_nested_attributes_for :funcionario
  accepts_nested_attributes_for :pessoa
  validates_associated :funcionario
  validates_associated :pessoa
end
