Rails.application.routes.draw do
  root to: 'public#index'

  # Route to -> /counsellors
  get 'counsellors', to: "public#counsellors", as: :counsellors
  
end
