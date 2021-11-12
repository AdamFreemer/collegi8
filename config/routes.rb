Rails.application.routes.draw do
  resources :attributes
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: proc { [404, {}, ["Nothing to see here"]] }
  post 'authenticate', to: 'authentication#authenticate'
end
