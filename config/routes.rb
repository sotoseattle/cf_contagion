Rails.application.routes.draw do
  resources :transmissions
  resources :patients

  root 'transmissions#index'
end
