Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/tasks', to: 'tasks#index'
  get '/tasks/new', to: 'tasks#new'
  get '/tasks/:id', to: 'tasks#show', as: :task
  post '/tasks', to: 'tasks#create'
  get '/tasks/:id/edit', to: 'tasks#edit', as: :task_edit
  patch '/tasks/:id', to: 'tasks#update'
  delete '/tasks/:id', to: 'tasks#destroy'
end

  # Read all restaurants
  # get '/restaurants', to: 'restaurants#index'
  # # Read one restaurant
  # # Always put the new route before the show
  # get '/restaurants/new', to: 'restaurants#new' # display a blank form
  # get '/restaurants/:id', to: 'restaurants#show', as: :restaurant
  # # Create a restaurant
  # post '/restaurants', to: 'restaurants#create' # once user has filled in the inputs and the restaurant is posted to the server
  # # Update a restaurant
  # get '/restaurants/:id/edit', to: 'restaurants#edit' # display a prefilled form
  # patch '/restaurants/:id', to: 'restaurants#update' # to patch the new updated instance to server
  # # Delete a restaurant
  # delete '/restaurants/:id', to: 'restaurants#destroy'
