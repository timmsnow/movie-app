class Api::MoviesController < ApplicationController
  def all_movies_action
    @movies = Movie.all
    render "all_movies.json.jb"
  end
end
