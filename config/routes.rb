Bucky::Application.routes.draw do
  
  resources :kickers

  get "home/Index"
  root 'home#Index'

  #Auth
  as :user do
    patch '/user/confirmation' => 'confirmations#update', :via => :patch, :as => :update_user_confirmation
  end
  devise_for :users, :controllers => {
      :registrations => 'user',
      :confirmations => 'confirmations'
  }
  devise_scope :user do
    post '/users/new' => 'user#new'
  end

  # Autmatically create routes to static pages
  # =link_to "Page Name", static_path(:file) 
  get ':page', to: 'static#show', as: :static, constraints: { page: /[a-zA-Z\-_\/]+/ }
end
