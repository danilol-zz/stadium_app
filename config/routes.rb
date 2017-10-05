Rails.application.routes.draw do
  resources :posts
  resources :countries
  resources :stadia
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/dashboard" => "dashboard#index", as: :dashboard
  root to: "dashboard#index"
end
