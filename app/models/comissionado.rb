class Comissionado < ActiveRecord::Base
  include ScopedSearch::Model
  scope :do_func, lambda {|id|where("funcionario_id = ?",id) }
  scope :exoneracoes,where("ativo = ? and decreto_exoneracao is not null",false)
  scope :ativos,where("ativo = ? and decreto_exoneracao is null",true)
  scope :busca, lambda { |q| where("funcionario_id like ? or funcionario_id like ?" ,"%#{q}%","%#{q}%") }
  belongs_to :orgao
  belongs_to :funcionario,:class_name=>'Funcionario'
  belongs_to :departamento
  belongs_to :escola


  TIPOE=[
    ['Diretoria','DIRETORIA'],
    ['Diretoria Adjunta','DIRETORIAADJUNTA'],
    ['Secretaria','SECRETARIA'],
    ['Supervisão','SUPERVISAO']
  ]
  TIPOD=[
    ['Chefia','CHEFIA']
  ]



  private


end
