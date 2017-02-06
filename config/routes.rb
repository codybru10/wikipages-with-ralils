Rails.application.routes.draw do
  resources :business_types do
    resources :businesses
  end
end
