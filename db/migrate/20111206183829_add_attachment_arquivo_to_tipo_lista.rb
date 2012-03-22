class AddAttachmentArquivoToTipoLista < ActiveRecord::Migration
  def self.up
    add_column :tipo_lista, :arquivo_file_name, :string
    add_column :tipo_lista, :arquivo_content_type, :string
    add_column :tipo_lista, :arquivo_file_size, :integer
    add_column :tipo_lista, :arquivo_updated_at, :datetime
  end

  def self.down
    remove_column :tipo_lista, :arquivo_file_name
    remove_column :tipo_lista, :arquivo_content_type
    remove_column :tipo_lista, :arquivo_file_size
    remove_column :tipo_lista, :arquivo_updated_at
  end
end
