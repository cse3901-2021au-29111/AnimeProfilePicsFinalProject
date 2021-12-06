Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'welcome/stdView'
  get 'welcome/newStd'
  post "welcome/newStd", to: "welcome#create"
  root to: "welcome#index"


end
