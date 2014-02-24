Bucky::Application.routes.draw do
  devise_for :users
  get "home/Index"

  root 'home#Index'

  devise_scope :user do
    get 'register', to: "devise/registrations#new", as: :register
    get 'login', to: "devise/sessions#new", as: :login
    get 'logout', to: "devise/sessions#destroy", as: :logout
  end

  # Autmatically create routes to static pages
  # =link_to "Page Name", static_path(:file) 
  get ':page', to: 'static#show', as: :static, constraints: { page: /[a-zA-Z\-_\/]+/ }
end
