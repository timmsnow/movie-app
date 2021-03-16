class Api::MoviesController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    @movies = Movie.where(english: :true)
    render "index.json.jb"
  end

  def create
    @movie = Movie.new(
      title: params[:title],
      year: params[:year],
      plot: params[:plot],
      director: params[:director],
    )
    #happy/sad path
    if @movie.save
      render "show.json.jb"
    else
      render json: { error: @movie.errors.full_messages }, status: 400
    end
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
    @movie.director = params[:director] || @movie.director
    @movie.english = params[:english] || @movie.english
    #happy/sad path
    if @actor.save
      render "show.json.jb"
    else
      render json: { error: @actor.errors.full_messages }, status: 400
    end
  end

  def destroy
    movie_id = params[:id]
    @movie = Movie.find(movie_id)
    @movie.destroy
    render json: { message: "Movie DESTROYED" }
  end
end
