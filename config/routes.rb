Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
    namespace :api do
        namespace :v1 do
            resources :users, only: [:index]
            resources :admins
            resources :doctors
            resources :patients
            resources :patient_histories

            post '/login', to: 'auth#create'
            get '/profile', to: 'users#profile'
            get 'doctors/profile', to: 'doctors#profile'
            get 'admins/profile', to: 'admins#profile'
            get 'patients/profile', to: 'patients#profile'
            get 'patients/:id', to: 'patients#show'
        end
    end
end
