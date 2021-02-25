class Api::ActorsController < ApplicationController
  def actor_action
    @actor = Actor.new(id: 1, first_name: "Kate", last_name: "Winslet", known_for: "Hideous Kinky")

    render "actor.json.jb"
  end
end
