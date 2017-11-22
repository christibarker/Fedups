Rails.application.routes.draw do
  

  resources :home 
  resources :boats 
  resources :jobs
  resources :boat_jobs
 

  devise_for :users, controllers: {
    registrations: 'users/registrations'
   }


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :users, only: [:index, :show]

root "home#index"
end
