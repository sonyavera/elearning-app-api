Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
  # resources :users
  # get "/users", to: "users/#index"
  post "/graphql", to: "graphql#execute"
  root 'library#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
