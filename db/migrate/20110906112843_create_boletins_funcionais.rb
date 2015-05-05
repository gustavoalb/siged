# -*- encoding : utf-8 -*-
class CreateBoletinsFuncionais < ActiveRecord::Migration
  def self.up
    create_table :boletins_funcionais do |t|
      t.integer :funcionario_id
      t.string :mes
      t.string :ano
      t.string :folha
      t.string :tipo, :limit=>1
      t.timestamps
    end
  end

  def self.down
    drop_table :boletins_funcionals
  end
end

