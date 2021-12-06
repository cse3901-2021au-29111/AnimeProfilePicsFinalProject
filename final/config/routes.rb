Rails.application.routes.draw do

  #Routes for sessions
  get 'sessions/loginPage'

  # Routes for Students
  get 'student/stdView'
  get 'student/newStd'
  get '/student/:id', to: 'student#currentStd'
  post "student/newStd", to: "student#create"
  delete 'student/:id', to: 'student#destroy'

  #Routes for teams
  get 'team/index'
  get 'team/newTeam'
  get 'team/:id', to: 'team#currentTeam'
  post 'team/newTeam', to: "team#create"
  delete 'team/:id', to: 'team#destroy'

  #Routs for rosters
  get 'roster/index'
  get 'roster/newRost'
  #get 'roster/:id', to: 'roster#currentRost'
  post 'roster/newRost', to: "roster#create"
  #delete 'roster/:id', to: 'roster#destroy'

  #Routes for sessions
  get '/login', to: 'sessions#loginPage'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  #Routes for evaluations
  get 'evaluation/index'

  #Routes for labs
  get 'lab/index'
  get 'lab/newLab'
  get 'lab/:id', to: 'lab#currentLab'
  post 'lab/newLab', to: 'lab#create'
  delete 'lab/:id', to: 'lab#destroy'

  root to: "student#index"
  resources :student
  resources :team
end
