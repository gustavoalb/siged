class Ambiente < ActiveRecord::Base
	include ScopedSearch::Model
	#default_scope where('entidade_id in (?)',User.usuario_atual.entidade_ids)
	belongs_to :tipo_ambiente
	belongs_to :entidade
	belongs_to :ano_letivo,:class_name=>"Setting",:foreign_key => "setting_id",:conditions=>["settings.tipo_config=?","ANOLETIVO"]
	has_many :turmas
	has_many :especificacoes,:class_name=>"EspecificarLotacao"
	has_many :funcionarios,:through=>:especificacoes
	has_and_belongs_to_many :turnos

	scope :busca, lambda { |q| where("nome like ? or nome like ?" ,"%#{q}%","%#{q}%") }


	scope :ambientes_educacionais,joins("join tipo_ambientes on tipo_ambientes.tipo_especificacao = 'E'")	
	scope :salas_ambiente,joins("join tipo_ambientes on tipo_ambientes.tipo_especificacao = 'J'")

	def fator_ambiente(funcionario)
		if self.tipo_ambiente.nome=="Sala Ambiente"
			turnos = self.turnos.count
			if turnos==2
				necessidade = 1
			elsif turnos==3
				necessidade = 2
			elsif turnos==0
				necessidade = 0
			end
			if necessidade==1 and self.funcionarios.none? and funcionario.rsd==funcionario.rsn
				return true,(necessidade-self.funcionarios.count)
			elsif necessidade==2 and self.funcionarios.none? and funcionario.rsd==funcionario.rsn
				return true,(necessidade-self.funcionarios.count)
			elsif necessidade==2 and self.funcionarios.count==1 and funcionario.rsd==funcionario.rsn
				return true,(necessidade-self.funcionarios.count)
			else
				return true,(necessidade-self.funcionarios.count)
			end
		end
	end
end

