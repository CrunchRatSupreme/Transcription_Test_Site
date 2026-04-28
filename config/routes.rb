Rails.application.routes.draw do
  root "items#index"
  resources :items do
    resources :transcriptions, only: [:create]
    member do
      post :claim
      post :release
    end
  end
end
