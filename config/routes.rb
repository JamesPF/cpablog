Michaelfelzpc::Application.routes.draw do

  get 'signup', to: 'users#new', as: 'signup'
  get 'settings', to: 'users#edit', as: 'settings' 
  get 'login', to: 'sessions#new', as: 'login'

  resources :users, :except => [:index]
  resources :sessions
  resources :bios, :except => [:show]
  resources :posts, :except => [:destroy]

  delete 'posts/:id', to: 'posts#destroy', as: :delete_post

  root 'application#index'

  get 'about/' => 'about#show', as: :about
  get 'blog/' => 'blog#index', as: :blog

end
