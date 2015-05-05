# -*- encoding : utf-8 -*-
class Distrito < ActiveRecord::Base
  belongs_to :municipio
  has_many :funcionarios
end

