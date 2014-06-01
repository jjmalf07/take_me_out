Rails.application.routes.draw do

  devise_for :users
  root 'userdates#index'


  # Routes for the Userdate resource:
  # CREATE
  get('/userdates/new', { :controller => 'userdates', :action => 'new' })
  get('/create_userdate', { :controller => 'userdates', :action => 'create' })

  # READ
  get('/userdates', { :controller => 'userdates', :action => 'index' })
  get('/userdates/:id', { :controller => 'userdates', :action => 'show' })

  # UPDATE
  get('/userdates/:id/edit', { :controller => 'userdates', :action => 'edit' })
  get('/update_userdate/:id', { :controller => 'userdates', :action => 'update' })

  # DELETE
  get('/delete_userdate/:id', { :controller => 'userdates', :action => 'destroy' })
  #------------------------------

  # Routes for the Match resource:
  # CREATE
  get('/matches/new', { :controller => 'matches', :action => 'new' })
  get('/create_match', { :controller => 'matches', :action => 'create' })

  # READ
  get('/matches', { :controller => 'matches', :action => 'index' })
  get('/matches/:id', { :controller => 'matches', :action => 'show' })

  # UPDATE
  get('/matches/:id/edit', { :controller => 'matches', :action => 'edit' })
  get('/update_match/:id', { :controller => 'matches', :action => 'update' })

  # DELETE
  get('/delete_match/:id', { :controller => 'matches', :action => 'destroy' })
  #------------------------------

  # Routes for the Event resource:
  # CREATE
  get('/events/new', { :controller => 'events', :action => 'new' })
  get('/create_event', { :controller => 'events', :action => 'create' })

  # READ
  get('/events', { :controller => 'events', :action => 'index' })
  get('/events/:id', { :controller => 'events', :action => 'show' })

  # UPDATE
  get('/events/:id/edit', { :controller => 'events', :action => 'edit' })
  get('/update_event/:id', { :controller => 'events', :action => 'update' })

  # DELETE
  get('/delete_event/:id', { :controller => 'events', :action => 'destroy' })
  #------------------------------

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
