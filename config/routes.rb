Rails.application.routes.draw do
 root "cocktails#index"


mount Attachinary::Engine => "/attachinary"
 delete 'doses/:id', to: "doses#destroy", as: "delete_dose"
 delete "cocktails/:id", to: "cocktails#destroy", as: "delete_cocktail"
  resources :cocktails do
    resources :doses
  # , only: [:show, :index, :new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
