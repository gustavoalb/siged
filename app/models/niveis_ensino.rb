class NiveisEnsino < ActiveRecord::Base
	has_many :series,:foreign_key=>:nivel_id
	has_many :matrizes,:class_name=>"Matriz",:foreign_key=>:nivel_id
	has_many :turmas,:through=>:series


end
