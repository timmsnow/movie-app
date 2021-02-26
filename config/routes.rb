Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/actor_path" => "actors#actor_action"
    get "/colin_path" => "actors#colin_action"
    get "/kermit_path" => "actors#kermit_action"
    get "/one_movie_path" => "movies#one_movie_action"
    get "/all_movies_path" => "movies#all_movies_action"
  end
