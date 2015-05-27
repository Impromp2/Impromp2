class UsersController < ApplicationController

  # Used to create the backbone model for the logged in User
  def show
    # Assigns a user's availabilities to the session user object
    session_user = User.find(current_user.id).to_json(:include => :availabilities)
    render json: session_user
  end


  def update
    current_user.email = params[:email]
    current_user.save
  end

end