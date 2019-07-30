Rails.application.routes.draw do
  resources :demos
  root to: 'visitors#index'
  devise_for :users
  resources :visitors, only: [:index, :show] do
    collection do
      get 'album'
    end
  end
  resources :users do
    resources :albums do
      resources :photos
    end
  end
end
