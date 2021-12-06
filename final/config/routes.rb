Rails.application.routes.draw do
  get 'sessions/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'student/stdView'
  get 'student/newStd'
  post "student/newStd", to: "student#create"

  get 'team/index'
  get 'team/newTeam'
  post 'team/newTeam', to: "team#create"

  get 'roster/index'
  get 'roster/newRost'
  post 'roster/newRost', to: "roster#create"

  #Routes for updating the roster
  get 'roster/selectCheckboxes'
  post 'roster/selectCheckboxes', to: "roster#create"

  #Routes for sessions
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'


  root to: "student#index"

end
