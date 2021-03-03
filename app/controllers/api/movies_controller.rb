class Api::MoviesController < ApplicationController
  def index
    @movies = Movie.all
    render "index.json.jb"
  end

  def create
    @movie = Movie.new(
      title: params[:title],
      year: params[:year],
      plot: params[:plot],
    )
    @movie.save
    render "show.json.jb"
  end

  def show
    movie_id = params[:id]
    @movie = Movie.find(movie_id)
    render "show.json.jb"
  end

  def update
    movie_id = params[:id]
    @movie = Movie.find(movie_id)
    @movie.title = params[:title] || @movie.title
    @movie.year = params[:year] || @movie.year
    @movie.plot = params[:plot] || @movie.plot
    @movie.save
    render "show.json.jb"
  end

  def destroy
    movie_id = params[:id]
    @movie = Movie.find(movie_id)
    @movie.destroy
    render json: { message: "Movie DESTROYED" }
  end
end
