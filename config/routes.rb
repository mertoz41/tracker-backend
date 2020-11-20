Rails.application.routes.draw do
  resources :stories
  resources :agendas
  resources :objectives
  resources :projects
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/login', to: 'auth#create'
  get '/check', to: 'auth#check'
  patch '/progress/:id', to: 'objectives#progress'
  patch '/edittododesc/:id', to: 'objectives#edit'
  post '/addstories/:id', to: 'projects#addstories'
  patch '/compstory/:id', to: 'stories#complete'
end
