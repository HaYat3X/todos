Rails.application.routes.draw do
  devise_for :users

  get "todos/new", to: "todos#new"
  post "todos/create", to: "todos#create"
end
