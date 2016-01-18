Rails.application.routes.draw do
  get 'users/show'

  root to: 'pages#index'

  # static pages
  get '/projects' => 'pages#projects', as: :projects
  get '/about' => 'pages#about', as: :about
  get '/secret', to: 'pages#secret', as: :secret

  # custom route names
  get '/makesomewords', to: 'posts#new'

  # login/logout stuff
  get "/auth/:provider/callback", to: "sessions#create"
  get "/logout" => "sessions#destroy", as: :logout

  # CRUD resources
  resources :posts

end
