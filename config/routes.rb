Rails.application.routes.draw do
  # get '/' => 'danimals#index'
  root to: 'danimals#index'

  # get '/danimals' => 'danimals#index'
  resources :danimals, only: [:index]
end
