class Api::ActorsController < ApplicationController
  def actor_action
    @actor = Actor.new(first_name: "Kate", last_name: "Winslet", known_for: "Hideous Kinky")
    render "actor.json.jb"
  end

  def colin_action
    actor = Actor.find(5)
    @actor = "#{actor.first_name} #{actor.last_name} is known for the movie #{actor.known_for}."
    render "colin.json.jb"
  end
end
