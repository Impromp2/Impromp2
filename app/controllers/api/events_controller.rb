module Api
  class EventsController < ApplicationController
    def index
      start_time = Date.strptime(params[:start], '%Y%m%d') 
      end_time = Date.strptime(params[:end], '%Y%m%d') 
      events = Event.where(:time => start_time.beginning_of_day..end_time.end_of_day)
      
      # selectedEvents = {monday: [], tuesday: [], wednesday: [], thursday: [], friday: [], saturday: [], sunday: []}

      # selectedEvents = []

      # session_user = User.find(current_user.id).to_json(:include => :availabilities)

      # events.each do |e|
      #   session_user.availabilites.each do |i|
      #     if (i.day_of_the_week == e.time.day_of_the_week && (i.start_time < e.time.hour.to_i && e.time.hour.to_i < i.end_time))
      #       selectedEvents.push(e)
      #     end
      #   end
      # end

      # return selectedEvents
      # events = Event.bark
      render json: events
    end
  end
end