Blastoise::Application.routes.draw do
  root :to => 'main#index'
  match '/welcome' => 'main#welcome'
  post '/login' => 'main#login'
  get '/logout' => 'main#logout'

  resources :readers, only: ['show', 'create']
  get '/current_user' => 'readers#current_user'

  resources :articles

  get '/query_article' => 'articles#query'
end
