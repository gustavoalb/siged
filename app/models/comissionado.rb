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
  has_many :pontos
  after_create :lotacao_comissionada
  TIPOE=[
    ['Diretoria','DIRETORIA'],
    ['Diretoria Adjunta','DIRETORIA ADJUNTA'],
    ['Secretaria','SECRETARIA'],
    ['Supervisão','SUPERVISÃO']
  ]
  TIPOD=[
    ['Chefia','CHEFIA']
  ]



  private
def lotacao_comissionada
    self.funcionario.lotacoes.create(:tipo_lotacao=>"COMISSÃO",:departamento_id=>self.departamento_id,:escola_id=>self.escola_id,:orgao=>self.orgao,:esfera_id=>self.orgao.esfera,:entidade_id=>self.funcionario.entidade_id,:data_lotacao=>Date.today,:usuario=>User.usuario_atual.username)
end

end
