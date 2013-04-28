Blastoise::Application.routes.draw do
  root :to => 'main#index'
  match '/welcome' => 'main#welcome'
  post '/login' => 'main#login'
  get '/logout' => 'main#logout'

  resources :readers, only: ['create']
end
