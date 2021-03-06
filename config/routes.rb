Rails.application.routes.draw do
  get 'search/index'
  devise_for :users
	get 'home/index'
	get 'search' => 'search#index'
	root to: 'home#index'
	resources :users, only: [:show, :edit, :update]
	resources :posts, only: [:new, :create, :show, :destroy]


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
