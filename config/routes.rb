Rails.application.routes.draw do
  resources :promises, only: [:index, :show]
end
