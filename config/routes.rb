Rails.application.routes.draw do

  devise_for :users, controllers: { omniauth_callbacks: 'callbacks', registrations: "registrations" }
  resources :import_files, only: [:new, :create]

  root to: 'import_files#new'

end
