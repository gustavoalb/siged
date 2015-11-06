# -*- encoding : utf-8 -*-
class CreatePeriodos < ActiveRecord::Migration
  def change
    create_table :periodos do |t|
      t.date :inicio
      t.date :fim
      t.datetime :abertura
      t.datetime :encerramento
      t.string :status

      t.timestamps
    end
  end
end
