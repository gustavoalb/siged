class AddMissingIndexes < ActiveRecord::Migration
  def self.up
    
    # These indexes were found by searching for AR::Base finds on your application
    # It is strongly recommanded that you will consult a professional DBA about your infrastucture and implemntation before
    # changing your database in that matter.
    # There is a possibility that some of the indexes offered below is not required and can be removed and not added, if you require
    # further assistance with your rails application, database infrastructure or any other problem, visit:
    #
    # http://www.railsmentors.org
    # http://www.railstutor.org
    # http://guides.rubyonrails.org

    
    add_index :formacaos, :pessoa_id
    add_index :curriculos, :disciplina_id
    add_index :curriculos, :matriz_id
    add_index :curriculos, :serie_id
    add_index :ambientes, :tipo_ambiente_id
    add_index :ambientes, :setting_id
    add_index :folhas, :quadro_id
    add_index :folhas, :esfera_id
    add_index :folhas, :poder_id
    add_index :cargos, :tipo_id
    add_index :fator_lotacaos, :especificar_lotacao_id
    add_index :especificar_lotacaos, :funcionario_id
    add_index :turmas, :escola_id
    add_index :turmas, :ambiente_id
    add_index :turmas, :matrize_id
    add_index :turmas, :serie_id
    add_index :escolas, :orgao_id
    add_index :escolas, :tipo_destino_id
    add_index :statuses, :processo_id
    add_index :descricao_cargos, :nivel_cargo_id
    add_index :descricao_cargos, :tipo_id
    add_index :orgaos, :esfera_id
    add_index :orgaos, :poder_id
    add_index :orgaos, :tipo_administracao_id
    add_index :distritos, :municipio_id
    add_index :departamentos, :orgao_id
    add_index :departamentos, :tipo_destino_id
    add_index :departamentos, :pai_id
    add_index :funcionarios, :orgao_id
    add_index :funcionarios, :pessoa_id
    add_index :funcionarios, :cargo_id
    add_index :funcionarios, :escola_id
    add_index :funcionarios, :quadro_id
    add_index :funcionarios, :distrito_id
    add_index :funcionarios, :descricao_cargo_id
    add_index :funcionarios, :nivel_id
    add_index :funcionarios, :categoria_id
    add_index :funcionarios, :sjuridica_id
    add_index :settings, :escola_id
    add_index :settings, :objeto_id
    add_index :listas, :pessoa_id
    add_index :listas, :funcionario_id
    add_index :listas, :tipo_lista_id
    add_index :roles_users, [:role_id, :user_id]
    add_index :roles_users, [:user_id, :role_id]
    add_index :quadros, :esfera_id
    add_index :quadros, :poder_id
    add_index :lotacaos, :orgao_id
    add_index :lotacaos, :departamento_id
    add_index :lotacaos, :escola_id
    add_index :lotacaos, :funcionario_id
    add_index :boletins_pessoais, :pessoa_id
    add_index :colapso_matrizes, [:serie_id, :serie_id]
    add_index :colapso_matrizes, [:disciplina_id, :disciplina_id]
    add_index :boletins_funcionais, :funcionario_id
  end
  
  def self.down
    remove_index :formacaos, :pessoa_id
    remove_index :curriculos, :disciplina_id
    remove_index :curriculos, :fator_id
    remove_index :curriculos, :matriz_id
    remove_index :curriculos, :serie_id
    remove_index :ambientes, :tipo_ambiente_id
    remove_index :ambientes, :setting_id
    remove_index :folhas, :quadro_id
    remove_index :folhas, :esfera_id
    remove_index :folhas, :poder_id
    remove_index :cargos, :tipo_id
    remove_index :naturezas_listas, :column => [:natureza_id, :tipo_lista_id]
    remove_index :naturezas_listas, :column => [:tipo_lista_id, :natureza_id]
    remove_index :fator_lotacaos, :especificar_lotacao_id
    remove_index :especificar_lotacaos, :funcionario_id
    remove_index :turmas, :escola_id
    remove_index :turmas, :ambiente_id
    remove_index :turmas, :matrize_id
    remove_index :turmas, :serie_id
    remove_index :escolas, :orgao_id
    remove_index :escolas, :esfera_id
    remove_index :escolas, :tipo_destino_id
    remove_index :statuses, :processo_id
    remove_index :descricao_cargos, :nivel_cargo_id
    remove_index :descricao_cargos, :tipo_id
    remove_index :orgaos, :esfera_id
    remove_index :orgaos, :tipo_destino_id
    remove_index :orgaos, :poder_id
    remove_index :orgaos, :tipo_administracao_id
    remove_index :distritos, :municipio_id
    remove_index :departamentos, :orgao_id
    remove_index :departamentos, :tipo_destino_id
    remove_index :departamentos, :pai_id
    remove_index :funcionarios, :orgao_id
    remove_index :funcionarios, :pessoa_id
    remove_index :funcionarios, :cargo_id
    remove_index :funcionarios, :escola_id
    remove_index :funcionarios, :quadro_id
    remove_index :funcionarios, :distrito_id
    remove_index :funcionarios, :gaveta_id
    remove_index :funcionarios, :descricao_cargo_id
    remove_index :funcionarios, :nivel_id
    remove_index :funcionarios, :categoria_id
    remove_index :funcionarios, :sjuridica_id
    remove_index :matrizes, :escola_id
    remove_index :roles_useres, :column => [:user_id, :role_id]
    remove_index :roles_useres, :column => [:role_id, :user_id]
    remove_index :settings, :escola_id
    remove_index :settings, :objeto_id
    remove_index :listas, :pessoa_id
    remove_index :listas, :funcionario_id
    remove_index :listas, :tipo_lista_id
    remove_index :roles_users, :column => [:role_id, :user_id]
    remove_index :roles_users, :column => [:user_id, :role_id]
    remove_index :roles_users, :column => [:role_id, :usuario_id]
    remove_index :roles_users, :column => [:usuario_id, :role_id]
    remove_index :disciplinas_habilitacoes, :column => [:descricao_cargo_id, :disciplina_id]
    remove_index :disciplinas_habilitacoes, :column => [:disciplina_id, :descricao_cargo_id]
    remove_index :disciplinas_habilitacoes, :column => [:disciplina_id, :disciplina_id]
    remove_index :quadros, :esfera_id
    remove_index :quadros, :poder_id
    remove_index :lotacaos, :orgao_id
    remove_index :lotacaos, :departamento_id
    remove_index :lotacaos, :escola_id
    remove_index :lotacaos, :funcionario_id
    remove_index :boletins_pessoais, :pessoa_id
    remove_index :colapso_matrizes, :column => [:serie_id, :serie_id]
    remove_index :colapso_matrizes, :column => [:disciplina_id, :disciplina_id]
    remove_index :colapso_matrizes, :column => [:matriz_id, :serie_id]
    remove_index :colapso_matrizes, :column => [:serie_id, :matriz_id]
    remove_index :boletins_funcionais, :funcionario_id
  end
end

