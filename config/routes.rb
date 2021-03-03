Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/movies" => "movies#index"
    post "/movies" => "movies#create"
    get "/movies/:id" => "movies#show"
    patch "/movies/:id" => "movies#update"
    delete "/movies/:id" => "movies#destroy"
    # get "/one_movie_path" => "movies#one_movie_action"
    # get "/all_movies_path" => "movies#all_movies_action"
    # get "/colin_path" => "actors#colin_action"
    # get "/colin_query_path" => "actors#colin_query_action"
    # get "/colin_query/:actor" => "actors#colin_query_action"
    # post "/colin_post_path" => "actors#colin_post_action"
  end
end
