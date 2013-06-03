Mysecurity::Application.routes.draw do

  match 'equipos/cargar_equipo' => 'equipos#cargar_equipo'
  match 'equipos/cargar_equipo/:id_equipo' => 'equipos#cargar_equipo'
  match 'equipos/agregar_jugadores' => 'equipos#agregar_jugadores'
  match 'equipos/agregar_jugadores/:id_equipo' => 'equipos#agregar_jugadores'
  match 'equipos/eliminar_jugadores' => 'equipos#eliminar_jugadores'
  match 'equipos/eliminar_jugadores/:id_equipo/:id_jugador' => 'equipos#eliminar_jugadores'

  match 'equipos/mi_equipo' => 'equipos#mi_equipo'
  match 'equipos/mi_equipo/:id_equipo' => 'equipos#mi_equipo'

  get "autocomplete_jugador/index"

  get "equipos/equipo_fecha" => 'equipos#equipo_fecha'


  #match '/equipos/agregar_equipo', :controller => 'equipos', :action => 'agregar_equipo'
  #match 'equipos/agregar_equipo' => 'equipos#agregar_equipo'

#  match 'recibos/paso_uno/:idLiquidacion/:idSituacionRevista' => 'recibos#paso_uno'  
 # match 'recibos/paso_uno' => 'recibos#paso_uno'  
  #match 'recibos/paso_dos' => 'recibos#paso_dos'  
  #match 'recibos/resultado/calcular' => 'recibos#resultado'    
  #match 'recibos/new/:idLiquidacion/:idSituacionRevista' => 'recibos#new'

  resources :tacticas

  resources :posicions

  get "page/index"

  get "page/about"

  get "page/contact"

  get "page/faq"

  resources :jugadors

  resources :estados

  resources :clubs

  resources :fechas

  resources :equipos do
    get :autocomplete_jugador_nombres, :on => :collection
  end
  
  resources :participantes

  resources :role_permissions

    devise_for :users, :path => 'user'

    resources :roles
    resources :users
  

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
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
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
  #
  #

  #root :to => "home#index"

  root :to => "page#index"

end
