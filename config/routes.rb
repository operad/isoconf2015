IsoconfApp::Application.routes.draw do
  resources :registrations
  resources :payments do
      collection do
        get 'confpay'
      end
  end

  # resources :temp
  devise_for :users

  devise_scope :user do
    root to: 'static_pages#home'
    match '/registrations/user', to: 'devise/registrations#create', via: :post
  end

  # root "static_pages#home"
  # root "static_pages#construction"
  match '/home', to: 'static_pages#home', via: 'get'
  match '/program', to: 'static_pages#program', via: 'get'
  match '/venue', to: 'static_pages#venue', via: 'get'
  match '/organizers', to: 'static_pages#organizers', via: 'get'
  match '/dates', to: 'static_pages#dates', via: 'get'
  match '/fees', to: 'static_pages#fees', via: 'get'
  match '/pay', to: 'static_pages#payment', via: 'get'
  match '/social', to: 'static_pages#social', via: 'get'
  match '/sponsors', to: 'static_pages#sponsors', via: 'get'
  match '/abstracts', to: 'static_pages#abstract-submittion', via: 'get'

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
