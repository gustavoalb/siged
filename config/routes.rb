Siged20::Application.routes.draw do


  get 'mensagens/inbox'

  resources :mensagens

  get "home/index"

  resources :niveis_ensinos do
    resources :series
  end

  resources :enquetes do
    get 'estatisticas_antes'
    get 'estatisticas_depois'
  end

  resources :home, :only=>:index

  namespace :folha do resources :fonte_recursos end

    namespace :arquivo do resources :documentos end

      namespace :administracao do 
        resources :migracoes
        resources :textos 
      end

      resources :categorias

      resources :configuracao_pontos

      resources :entidades
      get "administracao/tarefas/funcionarios"
      namespace :administracao do resources :tarefas end

        get "administracao/index"


        get "administracao/atualizar_informacao"

        namespace :folha do resources :competencias end
          namespace :folha do
            resources :financeiros do
             get "validar_matricula"
             get "validar_evento"
           end
         end
         resources :vencimentos


         namespace :folha do
          resources :folhas do
           get "imprimir_financeiros"
           resources :financeiros do

           end

      #fim do resource folhas
    end

  #fim do namespace folha
end



resources :comissionados do
  get "exonerar_comissionado"
  post "salvar_exoneracao"
  resources :pontos do
    get 'ponto',:controller=>'pontos',:action=>"exportar_em_pdf"
    get 'salvar_ponto',:controller=>'pontos',:action=>"salvar_em_pdf",:template=>'exportar_em_pdf'
  end
end

namespace :folha do resources :eventos end


  resources :categoria

  resources :tipo_listas do
    get :adicionar_de_arquivo
    get :detalhes_pessoa
    post :salvar_arquivo
    get :listar
    get :relatorio
  end

  resources :ambientes


  resources :matrizes do
    get :configurar_curriculos
    put :salvar_curriculo
    resources :curriculos
  end

  resources :settings

  resources :departamentos

  resources :disciplina_contratacoes

  resources :folhas



  resources :quadros do
    resources :folhas
  end

  resources :roles




  devise_for :users
  resources :usuarios

  # add another lines as you need...


  resources :referencia_niveis do
    resources :vencimentos
  end

  resources :situacoes_juridicas

  resources :municipios

  resources :orgaos
  resources :orgaos do
    get 'agenda'
    resources :departamentos do
      get 'tarefas'
      get 'pontos_funcionarios'
      get 'pontos'
      get 'pontos_do_mes'
      get 'gerar_pontos'
      post 'salvar_pontos'
    end
  end



  resources :cargos

  resources :formacoes
  get 'lotacoes/convalidar'
  get 'lotacoes/gerar_relatorio'
  get 'lotacoes/gerar_arquivo'
  resources :lotacoes

  get 'relatorios/funcionarios_por_disciplina',:controller=>"funcionarios",:action=>'relatorio_por_disciplina'
  resources :funcionarios
  resources :anos_letivos,:controller=>'ano_letivos'
  resources :escolas do
    get :controle_turma
    get :listar_turmas
    get :incluir_turma
    post :salvar_turma
    get :configuracoes
    get :ctrl_ch_resumido
    get :ctrl_ch_detalhado
    get :gerar_controle_ch
    resources :ambientes do
      get :configurar_ambiente
      get :configurar_ambiente_fisico
      get :incluir_turma
      post :salvar_turma
      get :excluir_turma
      get :incluir_ambiente_fisico
      post :salvar_ambiente_fisico
      get :excluir_ambiente_fisico
    end
  end
  resources :pessoas do
    get "gerar_relatorio"
    resources :fotos,:only => [:index, :show, :novo, :create,:new] do
     post 'upload',:on=>:collection
   end
   get "gerar_boletim"
   get "qualificar"
   get "edicao_rapida"
   post "salvar_boletim"
   get "boletins"
   get "boletim_pessoal"
   get "exibir_boletim"
   get "qualificar_funcionario"
   get "departamento"
   get "adicionar_a_lista"
   post "salvar_lista"
   resources :formacoes
   resources :funcionarios do
    resources :comissionados do
      get "exonerar_comissionado"
      post "salvar_exoneracao"
      resources :pontos do
        get 'ponto',:controller=>'pontos',:action=>"exportar_em_pdf"
        get 'salvar_ponto',:controller=>'pontos',:action=>"salvar_em_pdf",:template=>'exportar_em_pdf'
      end
    end
    get "boletim_funcional"

    resources :ponto_diarios do

     resources :ponto_assinaturas
     get :assinar_ponto
     post :assinar
   end
   get "historico"
   get "carta"
   get "gerar_boletim"
   post "salvar_boletim"
   get "boletins"
   get "exibir_boletim"
   resources :lotacoes do
    get "devolver_funcionario"
    get "confirmar_lotacao"
    get "cancelar_lotacao"
    get "especificar_lotacao"
    get "especificacao_massiva"
    post "salvar_confirmacao"
    post "salvar_cancelamento"
    post "salvar_devolucao"
    post "salvar_convalidacao"
    post "salvar_especificacao"
    get  "apagar_especificacao"
    #get "turmas"
    resources :pontos do
      get 'ponto',:controller=>'pontos',:action=>"exportar_em_pdf"
      get 'salvar_ponto',:controller=>'pontos',:action=>"salvar_em_pdf",:template=>'exportar_em_pdf'
    end

  end
end

end

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  post 'administracao/tarefas/send_data'
  match 'funcionarios/folha'
  match 'pessoas/naturalidade'
  match 'lotacoes/prolabore'  
  match 'lotacoes/especial',:controller=>"lotacoes",:action=>"lotacao_especial"
  match 'lotacoes/destino'
  match 'lotacoes/turmas'
  match 'lotacoes/tipo_destino'
  match 'funcionarios/distrito'
  match 'pessoas/distrito'
  match 'funcionarios/diretor'
  match 'administracao/tarefas/atributos'
  match 'administracao/tarefas/verificar_atributo'
  match 'lotacoes/secretarias',:controller=>"lotacoes",:action=>"escolas_destino"
  match 'folha/financeiro/auto_complete_for_folha_financeiro_funcionario_id',:controller=>"folha/financeiros",:action=>'auto_complete_for_folha_financeiro_funcionario_id'
  match 'folha/financeiro/auto_complete_for_folha_financeiro_evento_id',:controller=>"folha/financeiros",:action=>'auto_complete_for_folha_financeiro_evento_id'
  match 'lotacoes/verifica_lotacao/:funcionario_id', :controller=> 'lotacoes',:action=>"verifica_lotacao"
  # match 'fotos/upload/:pessoa_id', :controller=> 'fotos',:action=>"upload"
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #  match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => "pessoas#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  match ':controller(/:action(/:id(.:format)))'
end
