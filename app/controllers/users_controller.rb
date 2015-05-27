class UsersController < ApplicationController

  # Used to create the backbone model for the logged in User
  def show
    # Assigns a user's availabilities to the current user object
    session_user = User.find(current_user.id).to_json(:include => :availabilities)
    render json: session_user
  end


  def update
    update = JSON.parse(params["user "])
    current_user.first_name = update['first_name']
    current_user.save()
  end

end