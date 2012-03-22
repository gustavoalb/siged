class ApplicationController < ActionController::Base

  before_filter :authenticate_user!
  before_filter :render_404
  before_filter :set_entidade
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to :back, :alert => "Você não tem autorização para acessar esta área"
  end

  protect_from_forgery

   before_filter do
    # Enable for all users in this case
    env['quickedit.enable'] = true
  end


  protected

  def set_entidade
    if user_signed_in?
      User.usuario_atual = current_user
      User.usuario_atual.save!
      User.ultimo_ip = current_user.current_sign_in_ip
    end
  end


  private
  def dados_essenciais
    @destinos = TipoDestino.all.collect{|t|[t.nome,t.id]}
    @cargos = Cargo.order(:nome).collect{|c|[c.nome,c.id]}
    @orgaos = Orgao.order(:nome).collect{|o|[o.nome.upcase,o.id]}
    @niveis_f = Nivel.order(:ordem).collect{|n|[n.nome.upcase,n.id]}
    @municipios = Municipio.order(:nome).collect{|m|[m.nome,m.id]}
    @sitjuridicas = SituacoesJuridica.order(:sigla).collect{|s|[s.nome,s.id]}
    @niveis = ReferenciaNivel.order(:codigo).collect{|n|[n.codigo,n.id]}
    @esferas = Esfera.order(:nome).collect{|n|[n.nome,n.id]}
    @escolas = Escola.order(:nome_da_escola).collect{|p| [p.nome_da_escola,p.id]}
    @poderes = Poder.order(:nome).collect{|p|[p.nome,p.id]}
    @descs = DisciplinaContratacao.order(:nome).collect{|p|[p.nome,p.id]}
    @quadros = Quadro.order(:nome).collect{|p|[p.nome,p.id]}
    # @folhas = Folha.all.collect{|p|[p.nome,p.id]}
    @tipos = Tipo.order(:nome).collect{|p|[p.nome,p.id]}
    @niveiscargos = NivelCargo.order(:nome).collect{|p|[p.nome,p.id]}
    #@diretores = Diretor.all.collect{|p|[p.pessoa.nome,p.id]}
    @tipo_ambientes = TipoAmbiente.all.collect{|t|[t.nome,t.id]}
    @series = Serie.all.collect{|s|[s.nome,s.id]}
    @categorias = Categoria.all.collect{|c|[c.nome,c.id]}
    @entidades = Entidade.all.collect{|e|[e.nome,e.id]}
    @recursos = Folha::FonteRecurso.all.collect{|r|[r.nome,r.id]}
  end
  def render_404
    manutencao = Manutencao.last
    if manutencao and manutencao.em_manutencao
      render :file => "#{Rails.root}/public/404.html", :status => :not_found
    else
      session[:return_to] = request.url
    end
  end

end
