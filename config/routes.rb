Bucky::Application.routes.draw do
  devise_for :users
  get "home/Index"

  root 'home#Index'

  # Autmatically create routes to static pages
  # =link_to "Page Name", static_path(:file) 
  get ':page', to: 'static#show', as: :static, constraints: { page: /[a-zA-Z\-_\/]+/ }
end
