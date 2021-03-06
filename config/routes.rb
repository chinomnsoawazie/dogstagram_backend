Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :dogs
  resources :comments
  resources :likes
  resources :followers
  post 'login', to: 'login#create'
  get 'apikeys', :to => 'users#api_keys'
  get 'users/checkhandle/:handle', :to => 'users#check_handle'
  get 'users/findUsers/:searchTerm', :to => 'users#findUsers'
end
