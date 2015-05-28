module Api
  class AvailabilitiesController < ApplicationController
    def index
      availabilities = Availability.where(:user_id == current_user.id)
      render json: availabilities
    end

    def destroy
      availabilities = Availability.where(:user_id == current_user.id)
      availabilities.destroy
      render json: availabilities
    end
  end
end