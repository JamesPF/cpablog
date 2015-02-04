Michaelfelzpc::Application.routes.draw do

  resources :users, :only => [:create, :update]
  resources :sessions
  resources :bios, :only => [:index, :create, :update]
  resources :posts

  root 'application#index'
  get 'about/' => 'about#show', as: :about
  get 'blog/' => 'blog#index', as: :blog

end
