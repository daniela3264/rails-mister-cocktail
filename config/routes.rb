Rails.application.routes.draw do
  # root to 'home' home page?
  resources :contact, only: [:new, :create]
  get 'cocktails', to: 'cocktails#index'
  resources :cocktails, only: %i[new create show] do |r|
    resources :doses, only: %i[new create]
  end

  resources :doses, only: [:destroy] # do if can add ingredients.
    #  resources :ingredients [only :new, :create]
  # end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


# add plant_tag to a plant in garden.

