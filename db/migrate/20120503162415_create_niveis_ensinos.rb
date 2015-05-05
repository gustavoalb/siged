# -*- encoding : utf-8 -*-
class CreateNiveisEnsinos < ActiveRecord::Migration
  def self.up
    create_table :niveis_ensinos do |t|
      t.string :nome
      t.string :codigo

      t.timestamps
    end
  end

  def self.down
    drop_table :niveis_ensinos
  end
end

