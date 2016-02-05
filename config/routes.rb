Rails.application.routes.draw do
  resources :intervals, except: [:new, :edit]
  resources :lift_sets, except: [:new, :edit]
  resources :lift_sets, except: [:new, :edit]
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  scope '/api' do
    namespace :v1, defaults: { format: :json } do
      # Auth
      mount_devise_token_auth_for 'User', at: '/auth'

      # User actions
      concern :upvotable do resources :upvotes, only: [:index, :create] end
      concern :downvotable do resources :downvotes, only: [:index, :create] end
      concern :commentable do resources :comments, only: [:index, :create] end
      resources :upvotes, only: [:show, :update, :destroy]
      resources :downvotes, only: [:show, :update, :destroy]
      resources :comments, only: [:show, :update, :destroy]

      # Template Resources
      resources :workout_templates, except: [:new, :edit], concerns: [:upvotable,
        :downvotable, :commentable]
      resources :exercise_templates, except: [:new, :edit], concerns: [:upvotable,
        :downvotable, :commentable]

      # Workout Resources
      resources :exercises, except: [:new, :edit], concerns: [:upvotable,
        :downvotable, :commentable]
      resources :workouts, except: [:new, :edit], concerns: [:upvotable,
        :downvotable, :commentable]
    end
  end

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
