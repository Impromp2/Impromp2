class UsersController < ApplicationController

  # Used to create the backbone model for the logged in User
  def show
    render json: current_user
  end

  def update
    byebug
    current_user.email = params[:email]
    current_user.save
  end

end
