Rails.application.routes.draw do
  
 

  get 'home/index'

  resources :home 
  resources :boats 
  resources :jobs

  devise_scope :users do
    post "/users" => 'devise/registration#create'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :users, only: [:index, :show]

root "home#index"
end
