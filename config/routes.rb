Rails.application.routes.draw do

  devise_for :users
  resources :import_files, only: [:new, :create]

  root to: 'import_files#new'

end
