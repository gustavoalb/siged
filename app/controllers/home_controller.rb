# -*- encoding : utf-8 -*-
class HomeController < ApplicationController

	def index
		@disciplinas = DisciplinaContratacao.find(:all,:joins=>:funcionarios,:order=>['nome asc']).uniq
		@professores = Funcionario.find_all_by_cargo_id(Cargo.find_by_nome("Professor")).uniq
		@indefinidos = Funcionario.find(:all,:conditions=>["cargo_id = ? and disciplina_contratacao_id is null",Cargo.find_by_nome("Professor")]).uniq
		@i_lotados = Funcionario.find(:all,:joins=>:lotacoes_atuais,:conditions=>["cargo_id = ? and disciplina_contratacao_id is null",Cargo.find_by_nome("Professor")]).uniq
		@i_especificados = Funcionario.find(:all,:joins=>:especificacoes,:conditions=>["cargo_id = ? and disciplina_contratacao_id is null",Cargo.find_by_nome("Professor")]).uniq
		#@categorias = Categoria.find(:all,:joins=>:funcionarios).uniq
		#@lotacoes_abertas = Lotacao.em_aberto.joins(:funcionario).order('data_lotacao desc')
		#@lotados = Funcionario.find(:all,:joins=>:lotacoes_atuais,:conditions=>["cargo_id = ?",Cargo.find_by_nome("Professor")]).uniq
		#@nao_lotados = Funcionario.find(:all,:include=>:lotacoes_atuais,:conditions=>["lotacaos.id is null"]).uniq
		#@regulares = Funcionario.find(:all,:joins=>:lotacoes_atuais,:conditions=>["cargo_id = ? and lotacaos.tipo_lotacao = ?",Cargo.find_by_nome("Professor"),"REGULAR"]).uniq
		#@especiais = Funcionario.find(:all,:joins=>:lotacoes_atuais,:conditions=>["cargo_id = ? and lotacaos.tipo_lotacao = ?",Cargo.find_by_nome("Professor"),"ESPECIAL"]).uniq
		#@sumarias = Funcionario.find(:all,:joins=>:lotacoes_atuais,:conditions=>["cargo_id = ? and lotacaos.tipo_lotacao = ?",Cargo.find_by_nome("Professor"),"SUMARIA"]).uniq
		#@sumarias_especiais = Funcionario.find(:all,:joins=>:lotacoes_atuais,:conditions=>["cargo_id = ? and lotacaos.tipo_lotacao = ?",Cargo.find_by_nome("Professor"),"SUMARIA ESPECIAL"]).uniq
		@noticias = Mensagem.noticias.order(:created_at)
	end

end

