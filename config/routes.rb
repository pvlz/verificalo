Verificalo::Application.routes.draw do

  # informacion
  root 'info#home', via: [ 'get', 'post' ]
  match '/info/:plate', to: 'info#results', via: [ 'get', 'post' ]
  match '/info/:plate/verificaciones', to: 'info#verificaciones', via: 'get'
  match '/info/:plate/infracciones', to: 'info#infracciones', via: 'get'
  match '/info/:plate/reset/:item', to: 'info#reset', via: 'get'

  # recordatorios
  match '/recordatorios', to: 'notices#home', via: 'get'
  match '/recordatorios', to: 'notices#new', via: 'post'
  match '/recordatorios/email', to: 'notices#email', via: 'get'
  match '/recordatorios/telefono', to: 'notices#phone', via: 'get'
  match '/recordatorios/twitter', to: 'notices#twitter', via: 'get'
  match '/recordatorios/:uuid', to: 'notices#user', via: 'get', as: :user
  match '/recordatorios/:uuid', to: 'notices#modify', via: 'post', as: :modify
  match '/recordatorios/:uuid/cancelar', to: 'notices#cancel', via: [ 'get', 'post' ], as: :cancel
  match '/twilio/confirm/:uuid', to: 'notices#twilio_confirm', via: 'get'
  match '/twilio/accept/:uuid', to: 'notices#twilio_accept', via: 'get'

  # twilio
  match '/twilio/confirm', to: 'twilio#confirm', via: 'post'
  match '/twilio/accept', to: 'twilio#accept', via: 'post'
  match '/twilio/error', to: 'twilio#error', via: 'get'

  # respuestas
  match '/respuestas', to: 'answers#home', via: 'get'
  match '/respuestas/buscar', to: 'answers#search', via: 'get'

  # respuestas de view
  match '/respuestas/verificacion/verificentros', to: 'answers#verificentros', via: 'get'
  match '/respuestas/verificacion/verificentros/cercanos', to: 'answers#verificentros_search', via: [ 'get', 'post' ]
  match '/respuestas/verificacion/verificentros/:delegacion_url', to: 'answers#verificentros_delegacion', via: 'get'
  
  # respuesta de db
  match '/respuestas/:category_url', to: 'answers#category', via: 'get'
  match '/respuestas/:category_url/:answer_url', to: 'answers#answer', via: 'get'

  # paginas estaticas
  match '/acerca', to: 'static_pages#about', via: 'get'

  # check engine
  match '/.well-known/status', to: 'status#check', via: 'get'

  # active admin
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
