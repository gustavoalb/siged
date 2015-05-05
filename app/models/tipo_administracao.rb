# -*- encoding : utf-8 -*-
class TipoAdministracao < ActiveRecord::Base
  set_table_name :tipo_administracaos
  has_many :orgaos
end

