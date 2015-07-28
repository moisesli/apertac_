Rails.application.routes.draw do
  resources :contactenos
  resources :anuncios
  resources :webamigas
  resources :documentos
  resources :presidentes
  resources :convocatorias
  resources :directorios
  resources :apertac_paginas
  resources :noticias
  get 'admins/index'

  get 'inicios/index'
  get 'inicios/contactenos_ok'
  get 'inicios/contactenos'
  get 'inicios/noticias'
  get 'inicios/noticia/:id' => 'inicios#noticia'
  get 'inicios/pagina/:id' => 'inicios#pagina'
  get 'inicios/presidente/:id' => 'inicios#presidente'
  get 'inicios/documento/:id' => 'inicios#documento'
  get 'inicios/documentos'
  get 'inicios/directorio/:id' => 'inicios#directorio'
  get 'inicios/directorios'  
  get 'inicios/anuncios'  
  get 'inicios/anuncio/:id' => 'inicios#anuncio'
  get 'inicios/web_amigas'
  get 'inicios/web_amiga/:id' => 'inicios#web_amiga'
 
  devise_for :users
  resources :posts
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'inicios#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
