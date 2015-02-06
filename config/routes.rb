Michaelfelzpc::Application.routes.draw do

  resources :users, :only => [:update]
  get 'signup', to: 'users#new', as: 'signup'
  get 'settings', to: 'users#edit', as: 'settings' 
  get 'login', to: 'sessions#new', as: 'login'
  resources :bios, :only => [:index, :create, :update]
  resources :posts

  root 'application#index'
  get 'about/' => 'about#show', as: :about
  get 'blog/' => 'blog#index', as: :blog

end
