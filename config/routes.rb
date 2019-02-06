Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :posts
  root to: 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_scope :user do
  get 'login', to: 'devise/sessions#new'
end
end