class Departamento < ActiveRecord::Base
  #default_scope where('entidade_id in (?)',User.usuario_atual.entidade_ids)
  belongs_to :orgao
  belongs_to :tipo_destino
  belongs_to :entidade
  has_many :comissionados
  has_many :lotacoes,:class_name=>"Lotacao"
  has_many :funcionarios,:through=>:lotacoes,:source=>"funcionario"
  has_one :responsavel,:through=>:comissionados,:source=>:funcionario
  #has_many :funcionarios_comissionados,:through=>:comissionados,:foreign_key=>"responsavel_id",:source=>'funcionario'
  belongs_to :departamento_pai,:class_name=>"Departamento",:foreign_key => "pai_id"
  has_many :departamentos_filhos,:class_name=>"Departamento",:foreign_key => "pai_id",:order => 'sigla ASC'
  scope :do_orgao, lambda {|id|where("departamentos.orgao_id = ?",id) }
  validates_uniqueness_of :nome,:scope=>[:nome,:sigla]

  before_save :setar_nil
  private

  def setar_nil
    if self.hierarquia==""
     self.hierarquia=nil
   end
 end
end