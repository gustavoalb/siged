class EntidadeUser < ActiveRecord::Base
	set_table_name :entidade_users
	belongs_to :user
	default_scope  where('user_id =  ?',User.usuario_atual.id)
	serialize :entidades

end
