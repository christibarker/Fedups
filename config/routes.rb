Rails.application.routes.draw do
  
 
  get 'users/index'

  get 'users/show'

  get 'home/index'

  resources :home 
  resources :boats 
  resources :jobs
 

  devise_for :users, controllers: {
    registrations: 'users/registrations'
   }


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :users, only: [:index, :show]

root "home#index"
end
