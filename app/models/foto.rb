# -*- encoding : utf-8 -*-
class Foto < ActiveRecord::Base
	#default_scope where('entidade_id in (?)',User.usuario_atual.entidade_ids)
	has_attached_file :imagem, :styles => {:foto=>"170x120>",:medium => "300x300>", :thumb => "100x100>" }
	belongs_to :entidade
end

