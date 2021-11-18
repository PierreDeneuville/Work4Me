Rails.application.routes.draw do
  devise_for :users, controllers: {
                                    registrations: 'users/registrations'
                                  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "offres#index"
  resources :offres
  resources :demandes, only: %i[new create show]
  resources :users, only: [:show]
end
