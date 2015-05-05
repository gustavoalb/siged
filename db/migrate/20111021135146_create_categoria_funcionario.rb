# -*- encoding : utf-8 -*-
class CreateCategoriaFuncionario < ActiveRecord::Migration
  def self.up
    create_table :categoria_funcionarios, :id => false do |t|
       t.references :categoria, :funcionario
  end
 end

  def self.down
    drop_table :categoria_funcionarios
  end
end


