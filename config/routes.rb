Rails.application.routes.draw do

  devise_for :users
  root 'photos#index'

  # Routes for the Favorite resource:
  # CREATE
  get('/favorites/new', { :controller => 'favorites', :action => 'new' })
  get('/create_favorite', { :controller => 'favorites', :action => 'create' })

  # READ
  get('/favorites', { :controller => 'favorites', :action => 'index' })
  get('/favorites/:id', { :controller => 'favorites', :action => 'show' })

  # UPDATE
  get('/favorites/:id/edit', { :controller => 'favorites', :action => 'edit' })
  get('/update_favorite/:id', { :controller => 'favorites', :action => 'update' })

  # DELETE
  get('/delete_favorite/:id', { :controller => 'favorites', :action => 'destroy' })
  #------------------------------

  # Routes for the Comment resource:
  # CREATE
  get('/comments/new', { :controller => 'comments', :action => 'new' })
  get('/create_comment', { :controller => 'comments', :action => 'create' })

  # READ
  get('/comments', { :controller => 'comments', :action => 'index' })
  get('/comments/:id', { :controller => 'comments', :action => 'show' })

  # UPDATE
  get('/comments/:id/edit', { :controller => 'comments', :action => 'edit' })
  get('/update_comment/:id', { :controller => 'comments', :action => 'update' })

  # DELETE
  get('/delete_comment/:id', { :controller => 'comments', :action => 'destroy' })
  #------------------------------

  # Routes for the Photo resource:
  # CREATE
  get('/photos/new', { :controller => 'photos', :action => 'new' })
  get('/create_photo', { :controller => 'photos', :action => 'create' })

  # READ
  get('/photos', { :controller => 'photos', :action => 'index' })
  get('/photos/:id', { :controller => 'photos', :action => 'show' })

  # UPDATE
  get('/photos/:id/edit', { :controller => 'photos', :action => 'edit' })
  get('/update_photo/:id', { :controller => 'photos', :action => 'update' })

  # DELETE
  get('/delete_photo/:id', { :controller => 'photos', :action => 'destroy' })
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
