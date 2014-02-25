Bucky::Application.routes.draw do
  
  get "home/Index"
  root 'home#Index'

  #Auth
  devise_for :users, :controllers => {:registrations => 'user' }
  
  # Autmatically create routes to static pages
  # =link_to "Page Name", static_path(:file) 
  get ':page', to: 'static#show', as: :static, constraints: { page: /[a-zA-Z\-_\/]+/ }
end
