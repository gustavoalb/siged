# -*- encoding : utf-8 -*-
class CreateEnquetes < ActiveRecord::Migration
  def self.up
    create_table :enquetes do |t|
      t.string :tipo
      t.string :sujeito
      t.string :opiniao_um
      t.text :comentario_um
      t.string :opiniao_dois
      t.text :comentario_dois

      t.timestamps
    end
  end

  def self.down
    drop_table :enquetes
  end
end

