module Api
  class EventsController < ApplicationController
    def index
      events = Event.where(time.hour > 12)
      render json: events
    end
  end
end