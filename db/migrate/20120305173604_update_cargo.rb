# -*- encoding : utf-8 -*-
class UpdateCargo < ActiveRecord::Migration
  def self.up
  	User.usuario_atual = User.find 1
  	Funcionario.all.each do |f|
  		if f.cargo.tipo==Tipo.find_by_nome('Magistério/Docência')
  			f.update_attributes(:cargo=>Cargo.find_by_nome('Professor'))
  		end
  	end
  end

  def self.down
  end
end

