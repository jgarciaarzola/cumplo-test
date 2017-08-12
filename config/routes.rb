Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :investors
    end
  end

  # get 'homes/index'

  root 'investors#index'

  resources :investors,only: [:new,:edit] do
    get :transfer,on: :collection
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
