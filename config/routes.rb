Rails.application.routes.draw do
  resources :students, only: [:create, :show, :index, :update, :destroy]
  resources :instructors, only: [:create, :show, :index, :update, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
