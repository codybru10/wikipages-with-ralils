Rails.application.routes.draw do
  root :to => 'business_types#index'

  get "/log-in" => "sessions#new"

  post "/log-in" => "sessions#create"

  get "/log-out" => "sessions#destroy", as: :log_out

  resources :business_types do
    resources :businesses, :except => [:index, :show]
  end

  resources :users

end
