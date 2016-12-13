Rails.application.routes.draw do
  scope :api do
    resources :users, expect: [:create]
    resources :stops
    resources :places
    resources :walks

    post 'register', to: 'auth#register'
    post 'login', to: 'auth#login'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
