Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/informations' => 'pages#informations'
  resources :inscriptions do
    member do
      post 'update_paiement', to: "inscriptions#update_paiement"
      post 'update_paiement2', to: "inscriptions#update_paiement2"
    end
  end
end
