class RecadPessoa < ActiveRecord::Base
	set_table_name :recad_pessoas
	has_many :recad_cargos

end