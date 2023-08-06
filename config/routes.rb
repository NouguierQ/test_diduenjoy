Rails.application.routes.draw do
  root 'home#index'
  post 'import_excel', to: 'excel#import'
  resources :orders
end
