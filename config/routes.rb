Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'static_pages#navbar'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
  get 'snippets' => 'static_pages#index_snippets'
  get 'theme' =>  'static_pages#theme'
  get 'starter' => 'static_pages#starter'
  get 'lab1' => 'static_pages#lab1'

  # week 2
  get 'indexnavbar' => 'static_pages#index_navbar'
  get 'tabs' => 'static_pages#tabs'
  get 'scrollspy' => 'static_pages#scrollspy'
  get 'accordion_example' => 'static_pages#accordion'
  get 'carousel' => 'static_pages#carousel'
  get 'lab2' => 'static_pages#lab2'

  # week 3
  get 'basic_form' => 'static_pages#basic_form'
  get 'enhanced_input' => 'static_pages#enhanced_input'

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
