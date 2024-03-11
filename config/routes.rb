Rails.application.routes.draw do
  devise_for :users

devise_scope :user do
   get '/users/sign_out' => 'devise/sessions#destroy'
end

  # get 'products/index'
  # get 'products/show'
  # get 'products/edit'
  # get 'products/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check
  root to: "products#index"
  # get '/',to: 'products#index'
  resources :products do
    resources :comments
  end
  # Defines the root path route ("/")
  # root "posts#index"
end
