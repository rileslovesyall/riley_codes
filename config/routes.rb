Rails.application.routes.draw do
  root to: 'pages#index'

  get '/projects' => 'pages#projects', as: :projects
  get '/about' => 'pages#about', as: :about
  get '/secret', to: 'pages#secret', as: :secret
  get '/haml', to: 'pages#haml_about'

end
