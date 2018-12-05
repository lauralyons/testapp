Rails.application.routes.draw do
  get 'payments/create'
  devise_for :users, controllers: { registrations: "user_registrations" }
  resources :products do
    resources :comments
  end

  resources :users

  root 'simple_pages#index'
  get 'simple_pages/about'
  get 'simple_pages/contact'
  get 'simple_pages/index'
  get 'simple_pages/landing_page'
  post 'simple_pages/thank_you'
  post 'payments/create'

  resources :orders, only: [:index, :show, :create, :destroy]

  mount ActionCable.server => '/cable'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
