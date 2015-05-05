# -*- encoding : utf-8 -*-
class UpdateCodigoSirhFromFuncionarios < ActiveRecord::Migration
  def self.up
  	User.usuario_atual = User.find 1
  	Funcionario.all.each do |f|
  		if f.cargo
  			f.update_attributes(:codigo_sirh=>f.cargo.codigo.to_s)
  		end
  	end
  end

  def self.down
  end
end

