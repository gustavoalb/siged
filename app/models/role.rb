class Role < ActiveRecord::Base
	
	include ScopedSearch::Model
	scope :busca, lambda { |q| where("name like ?" ,"%#{q}%") }  
	has_and_belongs_to_many :users,:join_table=>"roles_users"
	belongs_to :entidade


end
