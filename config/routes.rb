Rails.application.routes.draw do
  # 認証関連のルーティング
  devise_scope :user do
    root to: "devise/sessions#new"
    devise_for :users
  end

  get "todos", to: "todos#index"

  get "todos/new", to: "todos#new"
  post "todos/create", to: "todos#create"

  get "todos/edit/:id", to: "todos#edit"
  patch "todos/update/:id", to: "todos#update"

  delete "todos/destroy/:id", to: "todos#destroy"
end
