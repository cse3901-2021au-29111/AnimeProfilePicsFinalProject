Rails.application.routes.draw do
  get 'sessions/new'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'student/stdView'
  get 'student/newStd'
  get '/student/:id', to: 'student#currentStd'
  post "student/newStd", to: "student#create"
  delete 'student/:id', to: 'student#destroy'

  get 'team/index'
  get 'team/newTeam'
  get 'team/:id', to: 'team#currentTeam'
  post 'team/newTeam', to: "team#create"
  delete 'team/:id', to: 'team#destroy'

  get 'roster/index'
  get 'roster/newRost'
  #get 'roster/:id', to: 'roster#currentRost'
  post 'roster/newRost', to: "roster#create"
  #delete 'roster/:id', to: 'roster#destroy'

  #Routes for sessions
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get 'evaluation/index'


  root to: "student#index"
  resources :student
  resources :team
end
