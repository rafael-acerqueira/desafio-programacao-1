Rails.application.routes.draw do

  resources :import_files, only: [:new, :create]

  root to: 'import_files#new'

end
