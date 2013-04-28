Blastoise::Application.routes.draw do
  root :to => 'main#index'
  match '/welcome' => "main#welcome"
  post '/login' => "main#login"

  resources :readers, only: ["create"]
end
