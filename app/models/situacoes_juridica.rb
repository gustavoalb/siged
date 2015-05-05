# -*- encoding : utf-8 -*-
class SituacoesJuridica < ActiveRecord::Base
  include ScopedSearch::Model
scope :busca, lambda { |q| where("sigla like ? or nome like ?" ,"%#{q}%","%#{q}%") }
has_many :funcionarios
belongs_to :evento_vencimento,:class_name=>"Folha::Evento",:foreign_key=>:evento_vencimento_id
belongs_to :entidade

end

