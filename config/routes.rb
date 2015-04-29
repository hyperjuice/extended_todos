Rails.application.routes.draw do
  root to: 'authors#index'
  
  # these are the author routes
  get '/authors', to: 'authors#index'
  get '/authors/:id', to: 'authors#show'
  post '/authors', to: 'authors#create'

  # these are the todos routes (using nested resources - 
  # allows us to not have to have a "hidden field")
  get '/authors/:id/todos', to: 'todos#index'
  post '/authors/:id/todos', to: 'todos#create'

end
