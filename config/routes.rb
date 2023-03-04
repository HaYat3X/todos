Rails.application.routes.draw do
  devise_for :users

  get "todos", to: "todos#index"

  get "todos/new", to: "todos#new"
  post "todos/create", to: "todos#create"

  get "todos/edit/:id", to: "todos#edit"
  patch "todos/update/:id", to: "todos#update"
end
