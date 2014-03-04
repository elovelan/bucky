Bucky::Application.routes.draw do
  
  resources :kickers

  get "home/Index"
  root 'home#Index'

  #Auth
  devise_for :users, :controllers => {:registrations => 'user' }
  devise_scope :user do
    post '/users/new' => 'user#new'
  end

  # Autmatically create routes to static pages
  # =link_to "Page Name", static_path(:file) 
  get ':page', to: 'static#show', as: :static, constraints: { page: /[a-zA-Z\-_\/]+/ }
end
