Rails.application.routes.draw do
  resources :tickets, only: [:index, :show, :edit, :update, :create, :new]
  root 'tickets#index'
end
