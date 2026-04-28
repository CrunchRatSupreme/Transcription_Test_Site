Rails.application.routes.draw do
  root "items#index"
  resources :items do
    resources :transcriptions, only: [:create]
  end
end
