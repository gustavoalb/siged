class UpdateEntidadeFromEscolas < ActiveRecord::Migration
	def self.up
		User.usuario_atual = User.find 1

		Escola.estadual.each do |e|
			e.update_attributes(:entidade=>Entidade.find_by_nome("Governo do Estado do Amapá"))
		end

		Escola.municipal.each do |e|
			e.update_attributes(:entidade=>Entidade.find_by_nome("Prefeitura Municipal de Macapá"))
		end

	end

	def self.down
	end
end
