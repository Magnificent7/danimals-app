Rails.application.routes.draw do
  # get '/' => 'danimals#index'
  root to: 'danimals#index'

  # get '/danimals' => 'danimals#index'
  # get '/danimals/new' => 'danimals#new'
  # post '/danimals' => 'danimals#create'
  # get '/danimals/:id' => 'danimals#show'
  resources :danimals, only: [:index, :new, :create, :show]

end
