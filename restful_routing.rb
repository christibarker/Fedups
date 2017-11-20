    Prefix Verb   URI Pattern               Controller#Action
home_index GET    /home/index(.:format)     home#index
           GET    /home(.:format)           home#index
           POST   /home(.:format)           home#create
  new_home GET    /home/new(.:format)       home#new
 edit_home GET    /home/:id/edit(.:format)  home#edit
      home GET    /home/:id(.:format)       home#show
           PATCH  /home/:id(.:format)       home#update
           PUT    /home/:id(.:format)       home#update
           DELETE /home/:id(.:format)       home#destroy
     boats GET    /boats(.:format)          boats#index
           POST   /boats(.:format)          boats#create
  new_boat GET    /boats/new(.:format)      boats#new
 edit_boat GET    /boats/:id/edit(.:format) boats#edit
      boat GET    /boats/:id(.:format)      boats#show
           PATCH  /boats/:id(.:format)      boats#update
           PUT    /boats/:id(.:format)      boats#update
           DELETE /boats/:id(.:format)      boats#destroy
      jobs GET    /jobs(.:format)           jobs#index
           POST   /jobs(.:format)           jobs#create
   new_job GET    /jobs/new(.:format)       jobs#new
  edit_job GET    /jobs/:id/edit(.:format)  jobs#edit
       job GET    /jobs/:id(.:format)       jobs#show
           PATCH  /jobs/:id(.:format)       jobs#update
           PUT    /jobs/:id(.:format)       jobs#update
           DELETE /jobs/:id(.:format)       jobs#destroy
     users POST   /users(.:format)          devise/registration#create
           GET    /users(.:format)          users#index
      user GET    /users/:id(.:format)      users#show
      root GET    /                         home#index
