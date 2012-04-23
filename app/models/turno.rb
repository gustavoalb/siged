class Turno < ActiveRecord::Base
	has_and_belongs_to_many :ambientes
end
