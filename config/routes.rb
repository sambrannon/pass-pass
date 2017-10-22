Rails.application.routes.draw do
  resources :vaults
  root 'vaults#index'
end
