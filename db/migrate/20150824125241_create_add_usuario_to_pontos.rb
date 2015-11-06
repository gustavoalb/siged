# -*- encoding : utf-8 -*-
class CreateAddUsuarioToPontos < ActiveRecord::Migration
  def self.up
    create_table :add_usuario_to_pontos do |t|
      t.integer :usuario_id

      t.timestamps
    end
  end

  def self.down
    drop_table :add_usuario_to_pontos
  end
end
