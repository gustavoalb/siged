# -*- encoding : utf-8 -*-
class Orgao < ActiveRecord::Base
  set_table_name :orgaos
  #default_scope where('entidade_id in (?)',User.usuario_atual.entidade_ids)

  scope :busca, lambda { |q| where("sigla ilike ? or codigo ilike ? or nome ilike ?" ,"%#{q}%","%#{q}%","%#{q}%") }
  belongs_to :esfera
  belongs_to :entidade
  belongs_to :tipo_administracao
  belongs_to :poder, :class_name=>"Poder"
  belongs_to :tipo_destino
  has_many :funcionarios,:through=>:lotacoes,:include=>[:pessoa],:conditions=>["lotacaos.ativo = ?",true],:order=>"pessoas.nome asc"
  has_many :funcionarios_do_orgao,:through=>:departamentos,:source=>:funcionarios
  has_many :lotacoes,:class_name=>"Lotacao",:dependent=>:destroy,:as=>:destino
  has_many :escolas
  has_many :departamentos,:dependent=>:destroy
  validates_uniqueness_of :nome

  def municipio_nome
    if self.nome.include?("PREFEITURA")
      nome = self.nome.gsub('PREFEITURA MUNICIPAL DE ','')
    else
      nome = "MACAPA"
    end
    return nome
  end

end
