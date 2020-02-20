Rails.application.routes.draw do
  # root to 'home' home page?
  get 'cocktails', to: 'cocktails#index'
  resources :cocktails, only: %i[new create show] do |r|
    resources :doses, only: %i[new create]
  end

  resources :doses, only: [:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
