Rails.application.routes.draw do
 root "cocktails#index"

 delete 'doses/:id', to: "doses#destroy"
  resources :cocktails do
    resources :doses
  # , only: [:show, :index, :new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
