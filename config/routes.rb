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
            # get '/profile', to: 'users#profile'
            get 'doctor/profile', to: 'doctors#profile'
            get 'admin/profile', to: 'admins#profile'
            get 'patient/profile', to: 'patients#profile'

        end
    end
end
