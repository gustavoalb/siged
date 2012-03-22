class AddDescricaoToAmbientes < ActiveRecord::Migration
  def self.up
    add_column :ambientes, :descricao, :string
    add_column :ambientes, :ano_letivo, :integer
    add_column :ambientes,:setting_id,:integer
  end

  def self.down
    remove_column :ambientes, :ano_letivo
    remove_column :ambientes, :descricao
    remove_column :ambientes,:setting_id
  end
end
