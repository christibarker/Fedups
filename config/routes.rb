Rails.application.routes.draw do
  
  get 'jobs/index'

  get 'jobs/new'

  get 'jobs/create'

  get 'jobs/show'

  get 'jobs/edit'

  get 'jobs/update'

  get 'jobs/destroy'

  get 'boats/index'

  get 'boats/new'

  get 'boats/create'

  get 'boats/show'

  get 'boats/edit'

  get 'boats/update'

  get 'boats/destroy'

  get 'home/index'

  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :users, only: [:index, :show]

root "home#index"
end
