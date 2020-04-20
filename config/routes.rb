Rails.application.routes.draw do
  get "/movies", to: "movies#index", as: "movies"
  get "/movies/new", to: "movies#new", as: "new_movie"
  get "/movies/:id/edit", to: "movies#edit", as: "edit_movie"
  get "/movies/:id", to: "movies#show", as: "movie"
  post "/movies", to: "movies#create"
  put "/movies/:id", to: "movies#update"
  delete "/movies/:id", to: "movies#destroy"
end
