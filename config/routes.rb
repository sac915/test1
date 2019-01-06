Rails.application.routes.draw do


  get 'sessions/new'
  get 'users/new'
  # root 'static_pages#home'
  # get 'static_pages/home', to: 'static_pages#home'
  # get 'static_pages/help', to: 'static_pages#help'
  
  # get 'static_pages/about' , to: 'static_pages#about'
  # get 'static_pages/contact', to: 'static_pages#contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

#rooting
  root :to => 'static_pages#home'
  # get '/help' => 'static_pages#help'
  # get '/about' => 'static_pages#about'
  # get '/contact' => 'static_pages#contact'



  get '/', to: 'static_pages#home'
  get '/help',    to: 'static_pages#help'
  get '/about',   to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/adventure', to: 'static_pages#adventure'
  get '/faq', to: 'static_pages#faq'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users
  
end
