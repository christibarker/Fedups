Rails.application.routes.draw do
  

  resources :home 
  resources :boats 
  resources :jobs
  resources :boat_jobs, except: [:destroy]

  delete '/boat_jobs' => 'boat_jobs#destroy', as: 'destroy_boat_job'
 

  devise_for :users, controllers: {
    registrations: 'users/registrations'
   }


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :users, only: [:index, :show, :home]

root "home#index"
end
