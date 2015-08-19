# -*- encoding : utf-8 -*-
class HomeController < ApplicationController
  #load_and_authorize_resource

  def index
    @disciplinas = Rails.cache.fetch('disciplinas', :expires_in => 24.hours) { DisciplinaContratacao.find(:all,:joins=>:funcionarios,:order=>['nome asc']).uniq }
    #@disciplinas = DisciplinaContratacao.find(:all,:joins=>:funcionarios,:order=>['nome asc']).uniq
    @professores = Funcionario.find_all_by_cargo_id(Cargo.find_by_nome("PROFESSOR")).uniq
    @indefinidos = Funcionario.find(:all,:conditions=>["cargo_id = ? and disciplina_contratacao_id is null",Cargo.find_by_nome("PROFESSOR")]).uniq
    @i_lotados = Funcionario.find(:all,:joins=>:lotacoes_atuais,:conditions=>["cargo_id = ? and disciplina_contratacao_id is null",Cargo.find_by_nome("PROFESSOR")]).uniq
    @i_especificados = Funcionario.find(:all,:joins=>:especificacoes,:conditions=>["cargo_id = ? and disciplina_contratacao_id is null",Cargo.find_by_nome("PROFESSOR")]).uniq
    @noticias = Mensagem.noticias.order(:created_at)
  end
end
