# -*- encoding : utf-8 -*-
class Poder < ActiveRecord::Base
	set_table_name :poders
	has_many :orgaos
	has_many :quadros
end

