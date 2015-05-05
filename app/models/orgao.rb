# -*- encoding : utf-8 -*-
class Orgao < ActiveRecord::Base
  set_table_name :orgaos
  #default_scope where('entidade_id in (?)',User.usuario_atual.entidade_ids)

  include ScopedSearch::Model
scope :busca, lambda { |q| where("sigla like ? or codigo like ? or nome like ?" ,"%#{q}%","%#{q}%","%#{q}%") }
  belongs_to :esfera
  belongs_to :entidade
  belongs_to :tipo_administracao
  belongs_to :poder, :class_name=>"Poder"
  belongs_to :tipo_destino
  has_many :funcionarios
  has_many :lotacoes,:class_name=>"Lotacao",:dependent=>:destroy
  has_many :escolas
  has_many :departamentos,:dependent=>:destroy
  validates_uniqueness_of :nome
end

