Rails.application.routes.draw do
  devise_for :users
  root to: 'products#index'
  resources :products do
    resources :teardowns, except: [:index, :destroy]
  end

  resources :teardowns, only: :show, path: 'share/teardowns'
end
