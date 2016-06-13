Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/informations' => 'pages#informations'
  resources :inscriptions do
    member do
      post 'update_paiement', to: "inscriptions#update_paiement"
    end
  end
end
