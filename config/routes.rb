Rails.application.routes.draw do
  resources :feeds
  get 'sessions/new'
  resources :posts do
    collection do
      post :confirm
    end
  end
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  resources :feeds
end
