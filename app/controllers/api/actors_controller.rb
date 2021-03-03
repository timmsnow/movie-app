class Api::ActorsController < ApplicationController
  # def index
  #   @movies = Movie.all
  #   render "index.json.jb"
  # end

  #def actor_action
  #   @actor = Actor.new(first_name: "Kate", last_name: "Winslet", known_for: "Hideous Kinky")
  #   render "actors.json.jb"
  # end

  # def colin_action
  #   actor = Actor.find(5)
  #   @actor = "#{actor.first_name} #{actor.last_name} is known for the movie #{actor.known_for}."
  #   render "actor.json.jb"
  # end

  # def colin_query_action
  #   input = params[:actor]
  #   @actor = Actor.find_by(first_name: "Colin")
  #   render "actor.json.jb"
  # end

  # def colin_post_action
  #   input = params[:actor]
  #   if input.downcase == "colin"
  #     @actor = Actor.find_by(first_name: "Colin")
  #   else
  #     @actor = "ah, ah, ah, you didn't enter the right password!"
  #   end
  #   render "actor.json.jb"
  # end

  # def kermit_action
  #   actor = Actor.find(6)
  #   @actor = "#{actor.first_name} #{actor.last_name} is known for the movie #{actor.known_for}."
  #   render "kermit.html.erb"
  # end
end
