Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
    namespace :api do
        namespace :v1 do
            resources :users, only: [:index, :create]
            resources :admins, only: [:index, :create]
            resources :doctors, only: [:index, :create]
            resources :patients, only: [:index, :create]
            resources :patient_histories, only: [:index, :create]

            post '/login', to: 'auth#create'
            get '/profile', to: 'users#profile'
            get 'doctors/profile', to: 'doctors#profile'
            get 'admins/profile', to: 'admins#profile'
            get 'patients/profile', to: 'patients#profile'
        end
    end
end
