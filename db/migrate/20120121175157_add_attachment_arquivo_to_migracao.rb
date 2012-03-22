class AddAttachmentArquivoToMigracao < ActiveRecord::Migration
  def self.up
    add_column :administracao_migracoes, :arquivo_file_name, :string
    add_column :administracao_migracoes, :arquivo_content_type, :string
    add_column :administracao_migracoes, :arquivo_file_size, :integer
    add_column :administracao_migracoes, :arquivo_updated_at, :datetime
  end

  def self.down
    remove_column :administracao_migracoes, :arquivo_file_name
    remove_column :administracao_migracoes, :arquivo_content_type
    remove_column :administracao_migracoes, :arquivo_file_size
    remove_column :administracao_migracoes, :arquivo_updated_at
  end
end
