Rails.application.routes.draw do
 root 'pages#home'

 get '/about', to: 'pages#about'
 
 get '/index', to: 'articles#index'
 
 resources :articles
end
