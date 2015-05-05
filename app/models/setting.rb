# -*- encoding : utf-8 -*-
class Setting < ActiveRecord::Base
validates_presence_of :tipo_config

scope :da_escola, lambda {|id|where("escola_id = ?",id) }
scope :diretoria,where("tipo_config ilike ?","direcao")
belongs_to :escola
belongs_to :entidade
belongs_to :diretor,:class_name=>"Diretor",:foreign_key=>"objeto_id",:inverse_of=>:escola
belongs_to :matriz,:class_name=>"Matriz",:foreign_key=>"objeto_id",:inverse_of=>:escola

TIPO=[
['Direção','DIRECAO'],
['Supervisão','SUPERVISAO'],
['Secretaria','SECRETARIA'],
['Matriz','MATRIZ']
]


TEMPO=[
['Semanas','SEMANAS'],
['Meses','MESES'],
['Ano','ANO']
]

end

