Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create, :edit, :update]
  resources :bloggers, only: [:index, :show, :new, :create]
  resources :destinations, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
