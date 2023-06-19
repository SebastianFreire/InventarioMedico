Rails.application.routes.draw do
  resources :categoria
  root "dashboard#index"
  resources :equipos 
 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
    
end
