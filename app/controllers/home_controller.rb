class HomeController < ApplicationController
caches_action :index

  def index
  	@disciplinas = DisciplinaContratacao.find(:all,:joins=>:funcionarios,:order=>['nome asc']).uniq
  	@professores = Funcionario.find_all_by_cargo_id(Cargo.find_by_nome("Professor")).uniq
  	@indefinidos = Funcionario.find(:all,:conditions=>["cargo_id = ? and disciplina_contratacao_id is null",Cargo.find_by_nome("Professor")]).uniq
  	@i_lotados = Funcionario.find(:all,:joins=>:lotacoes_atuais,:conditions=>["cargo_id = ? and disciplina_contratacao_id is null",Cargo.find_by_nome("Professor")]).uniq
  	@i_especificados = Funcionario.find(:all,:joins=>:especificacoes,:conditions=>["cargo_id = ? and disciplina_contratacao_id is null",Cargo.find_by_nome("Professor")]).uniq
  	@categorias = Categoria.find(:all,:joins=>:funcionarios).uniq
  	@lotacoes_abertas = Lotacao.em_aberto.joins(:funcionario).order('data_lotacao desc')
  end

end
