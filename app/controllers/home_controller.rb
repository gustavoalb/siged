class HomeController < ApplicationController
caches_action :index

  def index
  	@disciplinas = DisciplinaContratacao.find(:all,:joins=>:funcionarios,:order=>['nome asc']).uniq
  	@professores = Funcionario.find_all_by_cargo_id(Cargo.find_by_nome("Professor"))
  	@indefinidos = Funcionario.find(:all,:conditions=>["cargo_id = ? and disciplina_contratacao_id is null",Cargo.find_by_nome("Professor")])
  	@i_lotados = Funcionario.find(:all,:joins=>:lotacoes_atuais,:conditions=>["cargo_id = ? and disciplina_contratacao_id is null",Cargo.find_by_nome("Professor")])
  	@i_especificados = Funcionario.find(:all,:joins=>:especificacoes,:conditions=>["cargo_id = ? and disciplina_contratacao_id is null",Cargo.find_by_nome("Professor")])

  end

end
