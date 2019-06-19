Rails.application.routes.draw do
  resources :cocktail do
    resources :ingredient, only: [ :new, :index, :create] do
      resources :dose, only: [ :new, :create]
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
