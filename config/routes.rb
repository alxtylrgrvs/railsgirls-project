Rails.application.routes.draw do
  get '/info', to: 'pages#info'
  root to: 'pages#home'
  resources :kittenzs
end
