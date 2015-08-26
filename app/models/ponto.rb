# -*- encoding : utf-8 -*-
require "barby/barcode/code_39"
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
  belongs_to :usuario,:class_name=>"User"
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
    self.arquivo_codigo = img
    self.save
  end

  def arquivo_ponto
    funcionario = self.funcionario
    pessoa = funcionario.pessoa
    dias = self.data.at_beginning_of_month..self.data.at_end_of_month
    File.open("/tmp/barcode-#{funcionario.matricula}-#{self.id}.png", 'wb'){|f| f.write self.arquivo_codigo }
    ponto = ODFReport::Report.new("#{Rails.public_path}/modelos/ponto.odt") do |r|
      r.add_field "NOME", pessoa.nome
      r.add_field "MATRICULA", funcionario.matricula
      r.add_field "JORNADA",if funcionario.nivel then "#{funcionario.nivel.jornada}H" else "40H" end
      r.add_field "CARGO",helper.cargo_disciplina(funcionario)
      r.add_field "LOTACAO",helper.detalhes(self.lotacao.destino)
      r.add_field "USER", self.usuario.nome
      r.add_field "MES", I18n.l(Date.today,:format=>"%B/%Y").upcase
      r.add_table("DIAS", dias, :header=>true) do |t|
         t.add_column("DIA") { |d| d.day }
         t.add_column("FERIADO") { |d| if d.saturday? then "SÁBADO" elsif d.sunday? then "DOMINGO" elsif d.feriado? then "FERIADO" end }
         t.add_column("NIL") {|d| if d.saturday? or d.sunday? or d.feriado? then "-" end}
      end
    end

    arquivo_ponto = ponto.generate("/tmp/ponto-#{funcionario.matricula}.odt")
    system "unoconv -f pdf /tmp/ponto-#{funcionario.matricula}.odt"
    self.arquivo = File.open("/tmp/ponto-#{funcionario.matricula}.pdf",'rb') {|io| io.read}
    self.save
  end
end

