Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :contacts, only: [:index, :create]
  get '/contact', to: 'contacts#index'
  root to:"contacts#index"
  get '/*a', to: redirect("/")
end
