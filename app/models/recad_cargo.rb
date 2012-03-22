class RecadCargo < ActiveRecord::Base
	set_table_name :recad_cargos
	belongs_to :recad_pessoa

end