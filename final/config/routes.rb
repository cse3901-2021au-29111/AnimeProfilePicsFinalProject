Rails.application.routes.draw do

  #Routes for students
  get 'student/stdView'
  get 'student/newStd'
  get '/student/:id', to: 'student#currentStd'
  post "student/newStd", to: "student#create"
  delete 'student/:id', to: 'student#destroy'
  put 'student/:id', to: 'student#update'

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
  get '/login', to: 'session#new'
  post '/login', to: 'session#create'
  delete '/logout', to: 'session#destroy'
  get 'session/new'

  #Routes for labs
  get 'lab/index'
  get 'lab/newLab'
  get 'lab/:id', to: 'lab#currentLab'
  post 'lab/newLab', to: 'lab#create'
  delete 'lab/:id', to: 'lab#destroy'

  #Routs for TeamLabs
  get 'team_labs/index'
  get 'team_labs/newTeamLab'
  #get 'roster/:id', to: 'roster#currentRost'
  post 'team_labs/newTeamLab', to: "team_labs#create"
  #delete 'roster/:id', to: 'roster#destroy'

  #Routs for Evals
  get 'evaluation/index'
  get 'evaluation/newEval'
  get 'evaluation/assignedEval'
  get 'evaluation/labEval', to: 'evaluation#labEval'
  get 'evaluation/evalUpdate/:id', to: 'evaluation#evalUpdate'
  put 'evaluation/evalUpdate/:id', to: 'evaluation#update'
  post 'evaluation/labEval', to: 'evaluation#create'
  post 'evaluation/newEval', to: "evaluation#create"

  #Routes for password
  get "password", to: "passwords#edit"
  patch "password", to: "passwords#update"

  root to: "student#index"
  resources :student
  resources :team
end
