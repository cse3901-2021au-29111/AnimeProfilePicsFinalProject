Rails.application.routes.draw do
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

  root to: "student#index"
  resources :student
end
