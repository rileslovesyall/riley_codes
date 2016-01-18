Rails.application.routes.draw do
  root to: 'pages#index'

  # static pages
  get '/projects' => 'pages#projects', as: :projects
  get '/about' => 'pages#about', as: :about
  get '/secret', to: 'pages#secret', as: :secret

  # custom route names
  get '/makesomewords', to: 'posts#new'

  # login/logout stuff
  # get '/rileyisawesome', to: ''

  # CRUD resources
  resources :posts

end
