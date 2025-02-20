Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
root 'prototypes#index'
  # Defines the root path route ("/")
  # root "articles#index"
  resources :prototypes, only: [:index, :new, :create,:show,:edit,:update,:destroy]
  resources :users, only: :show
  
    resources :prototypes do
    resources :comments, only: [:create, :new]
    resources :users, only: :show
  end
end
