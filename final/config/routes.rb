Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'student/stdView'
  get 'student/newStd'
  get '/student/:id', to: 'student#currentStd'
  post "student/newStd", to: "student#create"

  get 'team/index'
  get 'team/new'
  post 'team/new', to: "team#create"

  root to: "student#index"

end
