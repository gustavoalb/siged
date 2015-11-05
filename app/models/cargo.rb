# -*- encoding : utf-8 -*-
class Cargo < ActiveRecord::Base
  #default_scope where('entidade_id in (?)',User.usuario_atual.entidade_ids)
  #acts_as_taggable
  #acts_as_taggable_on :nome, :codigo
  scope :busca, lambda { |q| where("codigo like ? or nome like ?" ,"%#{q}%","%#{q}%") }
  validates_presence_of :codigo,:nome,:message=>"Não pode ficar em branco"
  validates_uniqueness_of :codigo,:scope=>[:nome,:entidade_id],:message=>"já cadastrado"
  has_many :funcionarios
  belongs_to :entidade
  belongs_to :tipo



  TIPO=[
    ["Magistério"],
    ["Administrativo"],
    ["Militar"],
    ["Saúde"]
  ]
end
