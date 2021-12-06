Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'students/stdView'
  get 'students/newStd'
  post "students/newStd", to: "students#create"
  root to: "students#index"


end
