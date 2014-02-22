Bucky::Application.routes.draw do
  devise_for :users
  get "home/Index"

  root 'home#Index'

  # get "/terms", to: "static_pages#terms", as: :terms_page
  # get "/pricing", to: "static_pages#pricing", as: :pricing_page
  # get "/how_ikickit_works", to: "static_pages#how_ikickit_works", as: :how_ikickit_works_page

  # Autmatically create routes to static pages
  # =link_to "Page Name", static_path(:file) 
  get ':page', to: 'static#show', as: :static, constraints: { page: /[a-zA-Z\-_\/]+/ }
end
