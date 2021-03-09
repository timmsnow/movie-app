class Api::ActorsController < ApplicationController
  def index
    @actors = Actor.all.order(age: :desc)
    render "index.json.jb"
  end

  def create
    @actor = Actor.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      age: params[:age],
      gender: params[:gender],
      known_for: params[:known_for],
      movie_id: params[:movie_id],
    )
    #happy/sad path
    if @actor.save
      render "show.json.jb"
    else
      render json: { error: @actor.errors.full_messages }, status: 400
    end
  end

  def show
    actor_id = params[:id]
    @actor = Actor.find(actor_id)
    render "show.json.jb"
  end

  def update
    actor_id = params[:id]
    @actor = Actor.find(actor_id)
    @actor.first_name = params[:first_name] || @actor.first_name
    @actor.last_name = params[:last_name] || @actor.last_name
    @actor.age = params[:age] || @actor.age
    @actor.gender = params[:gender] || @actor.gender
    @actor.known_for = params[:known_for] || @actor.known_for
    @actor.movie_id = params[:movie_id] || @actor.movie_id
    #happy/sad path
    if @actor.save
      render "show.json.jb"
    else
      render json: { error: @actor.errors.full_messages }, status: 400
    end
  end

  def destroy
    actor_id = params[:id]
    @actor = Actor.find(actor_id)
    @actor.destroy
    render json: "message: ACTOR DESTROYED"
  end
end
