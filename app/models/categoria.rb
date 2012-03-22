class Categoria < ActiveRecord::Base
  set_table_name :categoria  
  has_many :funcionarios
  belongs_to :entidade
  has_many :textos
end
