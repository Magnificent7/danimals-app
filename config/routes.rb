Rails.application.routes.draw do
  # get '/' => 'danimals#index'
  root to: 'danimals#index'

  # get '/danimals' => 'danimals#index'
  # get '/danimals/new' => 'danimals#new'
  # post '/danimals' => 'danimals#create'
  # get '/danimals/:id' => 'danimals#show'
  # get '/danimals/:id/edit' => 'danimals#edit'
  # patch '/danimals/:id' => 'danimals#update'
  # delete '/danimals/:id' => 'danimals#destroy'
  resources :danimals
  # , only: [:index, :new, :create, :show, :edit, :update, :destroy]

end
