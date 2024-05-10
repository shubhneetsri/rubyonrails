Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resource :products do
          get 'test/:id' => 'products#test'
          get 'string_test'
          get 'show'
          get 'missing_num'
          get 'fibonacci'
          get 'vowles'
          post 'create'
      end
    end
  end

resource :products do
  get 'test/:id' => 'products#test'
  get 'show'
  post 'create'
end
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
