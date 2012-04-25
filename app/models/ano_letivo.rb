class AnoLetivo < ActiveRecord::Base
    validates_presence_of :ano
    has_many :turmas
end
