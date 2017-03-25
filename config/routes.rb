Rails.application.routes.draw do
  root "questions#index"

  resources :questions

  resources :answers

  resources :user

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
