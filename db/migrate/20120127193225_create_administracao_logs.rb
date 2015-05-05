# -*- encoding : utf-8 -*-
class CreateAdministracaoLogs < ActiveRecord::Migration
  def self.up
    create_table :administracao_logs do |t|
      t.text :log
      t.integer :user_id
      t.date :data
      t.string :tipo

      t.timestamps
    end
  end

  def self.down
    drop_table :administracao_logs
  end
end

