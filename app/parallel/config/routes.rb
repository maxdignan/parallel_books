Rails.application.routes.draw do
  get 'notes/personal'

  get 'notes/public'

  post 'notes/create'

  get '/signup' => 'users#new'

  post '/signup/create' => 'users#create'

  post '/signin' => 'index#create'

  get '/logout' => 'index#destroy'

  get '/books/:id' => 'books#show'

  get '/books' => 'books#index'

  get '/purchase_books' => 'purchase_pages#index'

  get '/buy_book/:id' => 'books#buy_book'

  root to: 'index#index'

  get '/static_pages/viewer.html:all' => 'statics#pdf_viewer'

  get '/load_pdf/:id' => 'books#load_pdf'
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
