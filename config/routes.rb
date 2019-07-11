Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]
      resources :documents, only: [:index, :show, :create]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
      get '/documents', to: 'documents#index'
      get '/documents/:id', to: 'documents#show'
      post '/documents/new', to: 'documents#create'

      mount ActionCable.server => '/cable'
    end
  end
end
