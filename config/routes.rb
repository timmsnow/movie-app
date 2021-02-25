Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/actor_path" => "actors#actor_action"
  end

  namespace :api do
    get "/colin_path" => "actors#colin_action"
  end

  namespace :api do
    get "/kermit_path" => "actors#kermit_action"
  end

  namespace :api do
    get "/all_movies_path" => "movies#all_movies_action"
  end

  namespace :api do
    get "/one_movie_path" => "movies#one_movie_action"
  end
end
