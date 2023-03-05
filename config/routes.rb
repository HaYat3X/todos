Rails.application.routes.draw do
  devise_scope :user do
    root to: "devise/sessions#new"
    devise_for :users
  end

  get "todos", to: "todos#index"
  get "todos/new", to: "todos#new"
  post "todos/create", to: "todos#create"
  patch "todos/complete/:id", to: "todos#complete"
  delete "todos/destroy/:id", to: "todos#destroy"
end
