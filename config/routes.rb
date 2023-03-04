Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :bookings
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'about', to: 'pages#about'
  # Defines the root path route ("/")
  # root "articles#index"
end
