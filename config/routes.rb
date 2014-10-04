Rails.application.routes.draw do
  resources :contacts
  resources :patients

  root 'patients#index'
end
