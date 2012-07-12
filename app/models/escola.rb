include Serenity::Generator
class Escola < ActiveRecord::Base
 include ScopedSearch::Model
 extend FriendlyId
 friendly_id :nome_da_escola, :use=> :slugged
 validates_presence_of :codigo,:nome_da_escola,:message=>" Não pode ficar em branco!"
 validates_uniqueness_of :nome_da_escola, :message=>"Já cadastrado",:scope => [:codigo,:nome_da_escola ],:case_sensitive=>false

 has_many :turmas,:include=>:ano_letivo,:conditions=>['turmas.ano_letivo_id = ano_letivo_id']
 has_many :salas_ambiente,:class_name=>"Ambiente.salas_ambientes"
 has_many :settings
 has_many :ambientes
 has_many :funcionarios,:through=>:lotacoes,:include=>[:pessoa],:conditions=>["lotacaos.ativo = ?",true],:order=>"pessoas.nome asc"
 has_many :comissionados,:conditions=>["ativo = ?",true]
 has_many :lotacoes,:class_name=>"Lotacao"
 has_many :especificacoes,:class_name=>'EspecificarLotacao'
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
 has_and_belongs_to_many :niveis,:class_name=>'NiveisEnsino',:join_table=>"escolas_matrizes"



 after_create :criar_ambientes
  #scoped_search
  
  scope :busca, lambda { |q| where("codigo ilike ? or nome_da_escola ilike ?" ,"%#{q}%","%#{q}%") }
  scope :municipal, where("rede ilike ?","municipal")
  scope :estadual, where("rede ilike ?","estadual")
  ZONA=[["Urbana","Urbana"],["Rural","Rural"]]


  def calcular_demanda(disc)
    demanda = 0
    turmas = self.turmas
    if !turmas.none?
      turmas.all.each do |t|
        t.curriculos.da_serie(t.serie.id).da_disciplina(disc).uniq.each do |c|
          demanda+=c.horas_semanal.to_i
        end
      end
      return demanda
    end 
  end

  def matrizes
    matrizes = []
    self.niveis.each do |n|
      n.matrizes.each do |m|
        matrizes << m
      end
    end
    matrizes
  end


  def calcular_oferta(disc)
    professores = self.funcionarios.find_all_by_cargo_id(Cargo.find_by_nome('Professor'))
    oferta = 0
    profs = []
    disc.disciplinas_contratacao.each do |d|
      d.funcionarios.where('id in (?)',professores).each do |f|
        profs << f
      end
    end
    professores = profs.uniq
    professores.each do |p|
      oferta+=p.rsd
    end
    return oferta.to_i
  end

  def calcular_preenchido(disc)
    preenchido = 0
    self.especificacoes.da_disciplina(disc).uniq.each do |e|
      preenchido+=e.hora_semanal.to_i
    end
    return preenchido
  end

  def cch_detalhado(template,out)
    @escola = self
    @matrizes = @escola.matrizes
    @user = User.usuario_atual
    @data = Time.now.strftime("%d/%m/%Y %T")
    if !@user.escola.nil? and @user.escola==@escola and @user.departamento.nil?
      @destino = "#{@escola.nome_da_escola.upcase}"
      @titulo = "CONTROLE DE CARGA HORÁRIA – RESUMO GERAL"
    else
      @destino = "#{@user.departamento.nome.upcase}"
      @titulo = "CONTROLE DE CARGA HORÁRIA DA #{@escola.nome_da_escola.upcase} – RESUMO GERAL"
    end
    @disciplinas = []
    @matrizes.each do |m|
      m.disciplinas.joins(:especificacoes).order(:nome).each do |d|
        @disciplinas << d
      end
    end
    @disciplinas = @disciplinas.uniq
    self.gerar_odt(template,out)
  end

  def gerar_odt(template,out)
    render_odt(template,out)
  end

  private
  def criar_ambientes
    self.ambientes.create(:nome=>"Secretaria Escolar",:tipo_ambiente=>TipoAmbiente.find_by_nome("Sala Ambiente"))
    self.ambientes.create(:nome=>"Biblioteca",:tipo_ambiente=>TipoAmbiente.find_by_nome("Sala Ambiente"))
    self.ambientes.create(:nome=>"Serviço Técnico-Pedagógico",:tipo_ambiente=>TipoAmbiente.find_by_nome("Sala Ambiente"))
    self.ambientes.create(:nome=>"Sala de Aula",:tipo_ambiente=>TipoAmbiente.find_by_nome("Sala de Aula"))
    self.ambientes.create(:nome=>"Diretoria",:tipo_ambiente=>TipoAmbiente.find_by_nome("Sala Ambiente"))
  end
end