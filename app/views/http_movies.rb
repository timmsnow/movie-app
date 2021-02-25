require "http"

@movies = HTTP.get("http://localhost:3000/api/one_movie_path")

parsed_movies = @movies.parse
pp parsed_movies
