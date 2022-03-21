Rails.application.routes.draw do

  root "articles#index"
  get '/articles/archived', to: 'articles#archived'

  resources :articles do 
  resources :comments
  end
end
