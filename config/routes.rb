Rails.application.routes.draw do
  devise_for :users, controllers: {
                                    registrations: 'users/registrations'
                                  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "offres#index"
  resources :offres
  resources :users, only: [:show]
  resources :demandes, only: %i[new create show] do
    resources :messages, only: %i[create]
  end
  patch "demandes/:id", to: "demandes#accepter", as: :accepter
  patch "demandes/:id", to: "demandes#refuser", as: :refuser
end
