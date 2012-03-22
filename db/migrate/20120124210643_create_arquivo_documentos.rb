class CreateArquivoDocumentos < ActiveRecord::Migration
  def self.up
    create_table :arquivo_documentos do |t|
      t.string :tipo
      t.integer :dono_id
      t.datetime :data
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :arquivo_documentos
  end
end
