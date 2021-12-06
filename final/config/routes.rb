Rails.application.routes.draw do
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

  root to: "student#index"

end
