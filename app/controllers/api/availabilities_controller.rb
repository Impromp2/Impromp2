module Api
  class AvailabilitiesController < ApplicationController
    def index
      availabilities = Availability.where(:user_id == current_user.id)
      render json: availabilities
    end

    def destroy
      availabilities = Availability.delete_all(:user_id == current_user.id)
      # availabilities.destroy
      render json: availabilities
    end

    def create

    update = JSON.parse(params["availability "])
    update.each do |i|
      availabilities = {}

      availabilities["start_time"] = i['start_time'].to_i
      availabilities["end_time"] = i['end_time'].to_i
      availabilities["day_of_the_week"] = i['day_of_the_week']
      availabilities["user_id"] = current_user.id
      Availability.create(availabilities)
    end

    render json: update
    end
  end
end