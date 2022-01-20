Rails.application.routes.draw do
  get 'messages/create'
  devise_for :users
  resources :rooms, only: [:index, :show, :create] do
    resources :messages, only: [:create]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "rooms#index"
end
