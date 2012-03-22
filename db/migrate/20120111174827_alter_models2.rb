class AlterModels2 < ActiveRecord::Migration
  def self.up
  	add_column :escolas,:entidade_id,:integer
  	add_column :especificar_lotacaos,:entidade_id,:integer
  	add_column :fator_lotacaos,:entidade_id,:integer
  	add_column :financeiro_fixos,:entidade_id,:integer
  	add_column :fotos,:entidade_id,:integer
  	add_column :ponto_assinaturas,:entidade_id,:integer
  	add_column :referencia_niveis,:entidade_id,:integer
    add_column :users,:entidade_id,:integer

  end

  def self.down
  	remove_column :escolas,:entidade_id
  	remove_column :especificar_lotacaos,:entidade_id
  	remove_column :fator_lotacaos,:entidade_id
  	remove_column :financeiro_fixos,:entidade_id
  	remove_column :fotos,:entidade_id
  	remove_column :ponto_assinaturas,:entidade_id
  	remove_column :referencia_niveis,:entidade_id
    remove_column :users,:entidade_id
  end
end
