class Api::MovieGenresController < ApplicationController
  def index
    @movie_genres = MovieGenre.all
    render "index.json.jb"
  end

  def create
    @movie_genre = MovieGenre.new(
      genre_id: params[:genre_id],
      movie_id: params[:movie_id],
    )
    #happy/sad path
    if @movie_genre.save
      render "show.json.jb"
    else
      render json: { error: @movie_genre.errors.full_messages }, status: 400
    end
  end
end
