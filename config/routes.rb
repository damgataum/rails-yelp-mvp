Rails.application.routes.draw do
  resources :restaurants, only: [ :index ] do
    # resources :reviews, only: [ :index, :new, :create ]
  end
end
