Rails.application.routes.draw do
  
  resources :appoints
  root to: 'public#index'

  # Route to -> /counsellors
  get 'counsellors', to: "public#counsellors", as: :counsellors
  get 'services', to: "public#services", as: :services
  get 'about', to: "public#about", as: :about
  
end