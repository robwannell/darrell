Rails.application.routes.draw do
 
 resources :appointment, only: [:new, :create]
 get '/appointment', to: 'appointment#new'
  match '/send_appointment', to: 'appointment#send_appointment', via: 'post'

  resources :pics
  resources :personals
  resources :photos
  get 'donate', to: 'donate#index'

  resources :mail_recipients
  resources :testamonies
  resources :endorsements
  resources :events
  resources :news
  resources :issues
  
  resources :personals do
    post :update_row_order, on: :collection
  end
  
  
  get 'darrell/about', to: 'darrell#about'
  
  get 'darrell/personalreferences', to: 'darrell#personalreferences'
  get 'darrell/issues', to: 'darrell#issues'
  get 'darrell/video', to: 'darrell#video'
  
  resources :contact, only: [:new, :create]
  get '/contact', to: 'contact#new'
  resources :support, only: [:new, :create]
  get '/support', to: 'support#new'
 
 
   match '/send_mail', to: 'contact#send_mail', via: 'post'
   match '/send_support_mail', to: 'support#send_support_mail', via: 'post'
   

  get 'bio', to: 'bio#index'

  get 'admin', to: 'admin#index'

  resources :pages
 
  get 'welcome/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'welcome#index'
   
   # Login and Logout
      get '/signup' => 'users#new'
      post '/users' => 'users#create'
      get 'users', to: 'users#index'
      
      
  # these routes are for showing users a login form, logging them in, and logging them out.
    get '/login' => 'sessions#new'
    post '/login' => 'sessions#create'
    get '/logout' => 'sessions#destroy'
        
        
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
