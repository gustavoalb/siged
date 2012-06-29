class Escola < ActiveRecord::Base
 extend FriendlyId
 friendly_id :nome_da_escola, :use=> :slugged
 validates_presence_of :codigo,:nome_da_escola,:message=>" Não pode ficar em branco!"
 validates_uniqueness_of :nome_da_escola, :message=>"Já cadastrado",:scope => [:codigo,:nome_da_escola ],:case_sensitive=>false

 has_many :turmas,:through=>:ano_letivo
 has_many :salas_ambiente,:class_name=>"Ambiente.salas_ambientes"
 has_many :series,:through=>:turmas,:source=>:serie
 has_many :settings
 has_many :ambientes
 has_many :funcionarios,:through=>:lotacoes,:include=>[:pessoa],:conditions=>["lotacaos.ativo = ?",true],:order=>"pessoas.nome asc"
 has_many :comissionados,:conditions=>["ativo = ?",true]
 has_many :lotacoes,:class_name=>"Lotacao"
 has_one :diretor_adjunto,:through=>:comissionados,:conditions=>["comissionados.tipo = ?",'DIRETORIA ADJUNTA'],:source=>:funcionario
 has_one :diretor,:through=>:comissionados,:conditions=>["comissionados.tipo = ?",'DIRETORIA'],:source=>:funcionario
 has_one :secretario,:through=>:comissionados,:conditions=>["comissionados.tipo = ?",'SECRETARIA'],:source=>:funcionario
 has_one :supervisor,:through=>:comissionados,:conditions=>["comissionados.tipo = ?",'SUPERVISÃO'],:source=>:funcionario
 belongs_to :tipo_destino
 belongs_to :municipio
 belongs_to :esfera
 belongs_to :orgao
 belongs_to :ano_letivo,:class_name=>"AnoLetivo"
 belongs_to :entidade
 has_and_belongs_to_many :matrizes,:class_name=>"Matriz"
 has_and_belongs_to_many :niveis_ensino,:class_name=>'NiveisEnsino',:join_table=>"escolas_matrizes"



 after_create :criar_ambientes
  #scoped_search
  include ScopedSearch::Model
  scope :busca, lambda { |q| where("codigo ilike ? or nome_da_escola ilike ?" ,"%#{q}%","%#{q}%") }
  scope :municipal, where("rede ilike ?","municipal")
  scope :estadual, where("rede ilike ?","estadual")
  ZONA=[["Urbana","Urbana"],["Rural","Rural"]]

 # def anos_letivos(ativo=true)
 #   a = self.settings.find :all,:conditions=>["tipo_config=? and ativo=?",'ANOLETIVO',ativo]
 # end


#  def necessidade_professor
#    necessidade=""
#    professor40=0
#    professor20=0
#    somafator=0
#    p40=0
#    p20=0
#    ent=""
#    somarfator=0
#    self.turmas.each do |t|
#      t.serie.disciplinas.each do |d|
#       p40 += Float(d.fator(t))/26
#       if p40<0.5
#        p40+=0.4
#      end
#      p20 += Float(d.fator(t))/12
#      if p20<0.5
#        p20+=0.4
#      end

#      professor40+=p40.round
#      professor20+=p20.round
#      somafator+=d.fator(t)
#    end


#  end
#  return somafator, p40.round,p20.round
# end
private

def criar_ambientes
  self.ambientes.create(:nome=>"Secretaria Escolar",:tipo_ambiente=>TipoAmbiente.find_by_nome("Sala Ambiente"))
  self.ambientes.create(:nome=>"Biblioteca",:tipo_ambiente=>TipoAmbiente.find_by_nome("Sala Ambiente"))
  self.ambientes.create(:nome=>"Serviço Técnico-Pedagógico",:tipo_ambiente=>TipoAmbiente.find_by_nome("Sala Ambiente"))
  self.ambientes.create(:nome=>"Sala de Aula",:tipo_ambiente=>TipoAmbiente.find_by_nome("Sala de Aula"))
  self.ambientes.create(:nome=>"Diretoria",:tipo_ambiente=>TipoAmbiente.find_by_nome("Sala Ambiente"))
end




end
