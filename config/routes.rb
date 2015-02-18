Michaelfelzpc::Application.routes.draw do

  get 'signup', to: 'users#new', as: 'signup'
  get 'settings', to: 'users#edit', as: 'settings' 
  get 'login', to: 'sessions#new', as: 'login'
  delete 'logout', to: 'sessions#destroy', as: 'logout'

  resources :users, :except => [:index]
  resources :sessions
  resources :bios, :except => [:show]
  resources :posts, :except => [:destroy]

  delete 'posts/:id', to: 'posts#destroy', as: :delete_post

  root 'home#show', as: :home

  get 'about/' => 'about#show', as: :about
  get 'blog/' => 'blog#index', as: :blog

end
