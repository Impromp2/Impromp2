module Api
  class EventsController < ApplicationController
    def index
      events = Event.where(params[:start]) # need to put date range in here instead of all
      # selectedEvents = {monday: [], tuesday: [], wednesday: [], thursday: [], friday: [], saturday: [], sunday: []}
      selectedEvents = events.map do |e|
        if (e.time.monday? && (15 < e.time.hour.to_i && e.time.hour.to_i < 20))
          # selectedEvents.push(e)
          e
        elsif (e.time.tuesday? && (15 < e.time.hour.to_i && e.time.hour.to_i < 20))
          e
        else
          puts e
        end
      end

      # return selectedEvents
      # events = Event.bark
      render json: selectedEvents
    end
  end
end