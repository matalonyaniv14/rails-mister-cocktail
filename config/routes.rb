Rails.application.routes.draw do
  get 'doses/new'
  get 'doses/show'
  resources :cocktails do
    resources :doses
    resources :ingredients, only: [:new, :create, :index, :destroy]

  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end