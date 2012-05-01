require "barby/barcode/code_25_interleaved"
require "barby/outputter/rmagick_outputter"
class Ponto < ActiveRecord::Base
  #default_scope where('pontos.entidade_id in (?)',User.usuario_atual.entidade_ids)
  validates_presence_of :data


  scope :da_lotacao, lambda {|id|where("lotacao_id = ?",id) }
  scope :do_comissionado, lambda {|id|where("comissionado_id = ?",id) }
  belongs_to :funcionario
  belongs_to :lotacao
  belongs_to :entidade
  belongs_to :comissionado
  has_many :ponto_diarios
  after_create :img_codigo,:salvar_pdf
  after_destroy :apagar_pdf



  def criar_pdf
    WickedPdf.new.pdf_from_string(
      render_to_string(:pdf => "invoice",:template => 'pontos/salvar_em_pdf.pdf.erb'))
  end








  def codigo_b
    codigo=self.funcionario_id.to_s+""+self.lotacao_id.to_s+'0'+''+self.funcionario.pessoa.cpf.to_s.gsub('.','').to_s.gsub("-","")
    if self.codigo_barras.nil?
      if codigo.size.even?
       self.codigo_barras = codigo
     else
      self.codigo_barras ='0'+''+codigo
    end
    self.save
  end
  return codigo
end

def codigo_a(cod)
  codigo = cod
  if cod==self.codigo_barras
    return true
  else
    return false

  end
end



private
def img_codigo
  codigo=self.codigo_b
  if codigo.size.even?
   codigo2 = codigo
 else
   codigo2='0'+''+codigo
 end
 barcode=Barby::Code25Interleaved.new(codigo2)
 File.open("public/pontos/codigos/#{codigo2}.png","w"){|f|
  f.write barcode.to_png}
end

def salvar_pdf
PontosController.new.salvar_pdf(self)
end

def apagar_pdf
  pdf = Pathname.new(Rails.root.join("public/pontos/#{self.funcionario.pessoa.slug}", "ponto-de-#{self.funcionario.pessoa.slug}-#{self.funcionario.slug}-#{self.data.strftime("%b-%Y").downcase}.pdf"))
  codigo_barra = Pathname.new(Rails.root.join("public/pontos/codigos", "#{self.codigo_barras}.png"))
  FileUtils.rm_rf(pdf)
  FileUtils.rm_rf(codigo_barra)
end

def criar_ponto
 func = Funcionario.find 5546
 pdiario = func.ponto_diarios.create(:ip_assinatura=>User.ultimo_ip, :data_assinatura=>Time.now, :user_id=>User.id, :pessoa_id=>func.pessoa.id, :ponto_id=>self.id)
end

end
