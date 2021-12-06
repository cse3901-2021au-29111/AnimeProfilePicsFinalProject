Rails.application.routes.draw do
<<<<<<< HEAD
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
=======

  #Routes for sessions
  get 'sessions/loginPage'

  # Routes for Students
>>>>>>> 59c16b1ba75dc72c0cb458c17fc8186dc84d5acb
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
  get '/login', to: 'session#new'
  post '/login', to: 'session#create'
  delete '/logout', to: 'session#destroy'
  get 'session/new'

  #Routes for evaluations
  get 'evaluation/index'

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
  post 'evaluation/newEval', to: "evaluation#create"

  root to: "student#index"
  resources :student
  resources :team
end
