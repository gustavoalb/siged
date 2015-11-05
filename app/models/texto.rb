# -*- encoding : utf-8 -*-
class Texto < ActiveRecord::Base
  scope :busca, lambda { |tipo| where( {:tipo => tipo }) }

  belongs_to :categoria
end
