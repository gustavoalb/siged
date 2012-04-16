require "barby/barcode/code_25_interleaved"
require "barby/outputter/rmagick_outputter"
class Lotacao < ActiveRecord::Base
  set_table_name :lotacaos
  #default_scope where('entidade_id in (?)',User.usuario_atual.entidade_ids)
  #escola_id sempre nil em lotacao especial
  #validates_uniqueness_of :orgao_id,:scope=>[:funcionario_id,:tipo_lotacao],:if => :check_ativo,:message=>"Lotação já efetuada neste destino"
  belongs_to :funcionario,:class_name=>'Funcionario'
  belongs_to :escola
  belongs_to :orgao
  belongs_to :entidade

  has_many :processos,:dependent=>:destroy
  has_many :pontos

  #has_one :ponto_atual,:through=>:funcionario,:source=>'pontos_do_mes'
  has_many :todos_processos,:class_name=>"Processo"
  has_many :status,:class_name=>"Status",:through=>:processos,:source=>"status"
  belongs_to :departamento
  #has_one :especificacao,:class_name=>"EspecificarLotacao",:dependent => :nullify
  belongs_to :ambiente
  scope :em_aberto, where("finalizada = ?",false)
  scope :finalizada, where("finalizada = ?",true)
  scope :atual,where("finalizada = ? and ativo = ? and complementar = ?",true,true,false)
  scope :complementares,where("complementar = ?",true)
  scope :ativo, where("ativo = ?",true)
  scope :inativa, where("ativo = ?",false)
  scope :confirmada_fechada, where("finalizada = ? and ativo=?",true,true)
  scope :verifica, lambda {|func,escola| where("funcionario_id = ? and escola_id=?",func,escola)}
  scope :pro_labore, where("tipo_lotacao = ?","PROLABORE")
  scope :sumaria, where("tipo_lotacao = ?","SUMARIA")
  scope :sumaria_especial, where("tipo_lotacao = ?","SUMARIA ESPECIAL")
  scope :especial, where("tipo_lotacao = ?","ESPECIAL")
  scope :regular, where("tipo_lotacao = ?","REGULAR")
  scope :a_convalidar, where(:convalidada=>false)

  after_create :lotacao_regular
  before_create :data



  def check_ativo
   if self.ativo
     return true
   else
     return false
   end
 end




 def confirma_lotacao
   proc = self.processos.em_aberto.encaminhado.last
   proc.finalizado = true
   proc.data_finalizado = Date.today
   if proc.save!
    self.finalizada = true
    self.data_confirmacao = Date.today
    self.save
    status = proc.status.new
    status.status = 'LOTADO'
    status.save
  else
    "Não foi possível gerar o processo"
  end

end



def cancela_lotacao(motivo)
 proc = self.processos.em_aberto.encaminhado.last
 proc2 = proc.clone
 proc2.data_finalizado = Time.now
 proc2.observacao = motivo
 proc2.natureza="CANCELAMENTO LOTAÇÃO"
 proc2.processo="CN#{proc2.processo}"
 proc2.tipo="CANCELAMENTO"
 if proc2.save!
   self.finalizada = true
   self.ativo = false
   self.save
   status = proc2.status.new
   status.status = 'CANCELADO'
   status.save
 else
  "Não foi possível gerar o processo"
end


end

def devolve_funcionario(motivo)
 proc = self.processos.finalizado.last
 proc2 = proc.clone
 proc2.data_finalizado = Time.now
 proc2.observacao = motivo
 proc2.natureza="DEVOLUÇÃO"
 proc2.processo="DV#{proc2.processo}"
 proc2.tipo="DEVOLUÇÃO"
 if proc2.save!
   self.finalizada = true
   self.ativo = false
   self.save
   status = proc2.status.new
   status.status = 'À DISPOSIÇÃO DO NUPES'
   status.save
 else
  "Não foi possível gerar o processo"
end


end



def codigo_b
  codigo=self.funcionario_id.to_s+""+self.escola_id.to_s+'0'+''+self.funcionario.pessoa.cpf.to_s.gsub('.','').to_s.gsub("-","")
  if self.codigo_barra.nil?
    if codigo.size.even?
     self.codigo_barra = codigo
   else
    self.codigo_barra ='0'+''+codigo
  end
  self.save
end
return codigo
end

def codigo_a(cod)
  codigo = cod
  if cod==self.codigo_barra
    return true
  else
    return false

  end
end


def img_codigo
  codigo=self.codigo_b
  if codigo.size.even?
   codigo2 = codigo
 else
   codigo2='0'+''+codigo
 end
 barcode=Barby::Code25Interleaved.new(codigo2)
 File.open("public/images/carta/codigos/#{codigo2}.png","w"){|f|
  f.write barcode.to_png}
end

def data
  self.data_lotacao = Date.today
  if self.tipo_lotacao=="SUMARIA" or self.tipo_lotacao=="SUMARIA ESPECIAL"
  self.data_confirmacao = Date.today
  end
end


private
def lotacao_regular
  self.img_codigo
  self.entidade_id = self.funcionario.entidade_id
  #self.data_lotacao = Date.today
  #self.save!
  processo=Processo.new
  processo.entidade_id = self.entidade_id
  processo.tipo="LOTAÇÃO"
  if self.tipo_lotacao=="PROLABORE"
    processo.natureza="PRO LABORE"
  elsif self.tipo_lotacao=="REGULAR"
   processo.natureza="LOTAÇÃO REGULAR"
 elsif self.tipo_lotacao=="ESPECIAL"
   processo.natureza="LOTAÇÃO ESPECIAL"
 elsif self.tipo_lotacao=="SUMARIA"
   processo.natureza="LOTAÇÃO SUMÁRIA"
   self.finalizada=true
   self.save
 elsif self.tipo_lotacao=="SUMARIA ESPECIAL"
   processo.natureza="LOTAÇÃO SUMÁRIA ESPECIAL"
   self.finalizada=true
   self.save
 elsif self.tipo_lotacao=="COMISSÃO"
   processo.natureza="LOTAÇÃO COMISSIONADA"
   self.finalizada=true
   self.save
 end
 processo.funcionario_id=self.funcionario_id
 processo.destino_id=self.escola_id
 processo.ano_processo=Date.today.year
 processo.regencia_classe=self.regencia_de_classe
 processo.encaminhado_em=Date.today
 processo.lotacao_id=self.id
 if processo.save!
  num=processo.id
  cod=Num.new
  if self.tipo_lotacao=="PROLABORE"
    processo.processo="PL#{cod.numero(num)}/#{Date.today.year}"
  elsif self.tipo_lotacao=="REGULAR"
    processo.processo="LR#{cod.numero(num)}/#{Date.today.year}"
  elsif self.tipo_lotacao=="ESPECIAL"
    processo.processo="LE#{cod.numero(num)}/#{Date.today.year}"
  elsif self.tipo_lotacao=="SUMARIA" or self.tipo_lotacao=="SUMARIA ESPECIAL"
    processo.processo="LS#{cod.numero(num)}/#{Date.today.year}"
    processo.finalizado=true
  elsif self.tipo_lotacao=="COMISSÃO"
    processo.processo="LC#{cod.numero(num)}/#{Date.today.year}"
    processo.finalizado=true
  end
  status=Status.new
  status.data=Time.now
  status.processo_id=processo.id
  if self.tipo_lotacao=="SUMARIA" or self.tipo_lotacao=="SUMARIA ESPECIAL" or self.tipo_lotacao=="COMISSÃO" 
    status.status="LOTADO"
  else
    status.status="ENCAMINHADO"
  end
  if self.complementar==false
    lotacoes = Lotacao.ativo.find :all,:conditions=>["funcionario_id = ? and id<>?",self.funcionario_id,self.id]
    lotacoes.each do |l|
      l.ativo = false
      l.save
    end
  end
  status.save
  processo.save

else
  processo.errors.add_to_base("O processo não pôde ser criado")
end

end




end
