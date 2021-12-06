Rails.application.routes.draw do
  get 'sessions/loginPage'
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
  get 'roster/:id', to: 'roster#currentRost'
  post 'roster/newRost', to: "roster#create"

  #Routes for sessions
  get '/login', to: 'sessions#loginPage'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  #Routes for labs
  get 'lab/index'
  get 'lab/newLab'
  get 'lab/:id', to: 'lab#currentLab'
  post 'lab/newLab', to: 'lab#create'
  delete 'lab/:id', to: 'lab#destroy'


  root to: "student#index"
  resources :student
end
