Rails.application.routes.draw do
  resources :transmissions
  resources :patients

  root 'patients#index'
end
