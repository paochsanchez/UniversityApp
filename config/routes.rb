Rails.application.routes.draw do
  resources :courses, except: [:destroy]
  root 'courses#index'
  get 'about', to: 'pages#about'
  get 'courses/new', to: 'courses#new'
  resources :students, except: [:destroy]
end
