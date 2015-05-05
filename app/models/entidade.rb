# -*- encoding : utf-8 -*-
class Entidade < ActiveRecord::Base
  has_and_belongs_to_many :users,:join_table=>:users_entidades
  belongs_to :esfera
  validates_uniqueness_of :nome
end

