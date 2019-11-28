Rails.application.routes.draw do
  get 'comments/create'
  # resources :posts
  root to: 'posts#home'
  devise_for :users , :controllers => {:registrations => "registrations"}
  resources :posts do
    resources :comments, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
