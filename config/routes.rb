Siged20::Application.routes.draw do








  resources :enquetes do
    get 'estatisticas_antes'
    get 'estatisticas_depois'
  end

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

  resources :manutencoes do
    post "em_manutencao"
  end

  resources :series

  resources :comissionados do
  get "exonerar_comissionado"
  post "salvar_exoneracao"
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
    end
  end



  resources :cargos

  resources :formacoes
  get 'lotacoes/convalidar'
  resources :lotacoes


  resources :funcionarios
  
  resources :escolas do
   resources :ano_letivos do

    resources :settings
   end
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
  get 'pessoas/especificar_lotacao'
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
         post "salvar_confirmacao"
         post "salvar_cancelamento"
         post "salvar_devolucao"
         post "salvar_convalidacao"
         post "salvar_especificacao"
         resources :pontos do
            get 'ponto',:controller=>'pontos',:action=>"exportar_em_pdf"
         end

end
end

  end

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  match 'funcionarios/folha'
  match 'pessoas/naturalidade'
  match 'lotacoes/prolabore'
  
  match 'lotacoes/especial',:controller=>"lotacoes",:action=>"lotacao_especial"
  match 'lotacoes/destino'
  match 'lotacoes/tipo_destino'
  match 'funcionarios/distrito'
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
