Rails.application.routes.draw do
  get "/todos", to: "todos#index"
  get "/todos/new", to: "todos#new", as: :new_todo
  post "/todos", to: "todos#create"
  get "/todos/:id", to: "todos#show", as: :todo
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
