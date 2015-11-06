# -*- encoding : utf-8 -*-
class Gratificacao < ActiveRecord::Base
	has_and_belongs_to_many :funcionarios
end
