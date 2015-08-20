# -*- encoding : utf-8 -*-
require "barby/barcode/code_25_interleaved"
require "barby/outputter/png_outputter"
class Ponto < ActiveRecord::Base
  #default_scope where('pontos.entidade_id in (?)',User.usuario_atual.entidade_ids)
  validates_presence_of :data
  validates_uniqueness_of :data,:scope=>[:funcionario_id,:lotacao_id]


  scope :da_lotacao, lambda {|id|where("lotacao_id = ?",id) }
  scope :do_comissionado, lambda {|id|where("comissionado_id = ?",id) }
  belongs_to :funcionario,:class_name=>'Funcionario'
  belongs_to :lotacao
  belongs_to :entidade
  belongs_to :comissionado
  after_create :img_codigo
  #before_destroy :apagar_pdf



def codigo
  funcionario = self.funcionario
  codfuncionario = sprintf '%07d',funcionario.id
  codponto = sprintf '%07d',self.id
  codigo = codfuncionario+codponto
  self.codigo_barras = codigo
  self.save
  return codigo
end

def img_codigo
  codigo = self.codigo
  img = Barby::Code39.new(codigo).to_png(:height=>90,:margin=>0)
  self.arquivo = img.to_s
  self.save
end




end

