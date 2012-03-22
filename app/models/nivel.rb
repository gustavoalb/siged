class Nivel < ActiveRecord::Base
	has_many :titulos,:dependent=>:destroy
	has_many :subtipos,:dependent=>:destroy
end
