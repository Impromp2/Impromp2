require 'pg'
conn = PG::Connection.open(:dbname => 'Impromp2_development')

namespace :query_api do
  api_key = File.read('lib/tasks/.api_key')
  desc "Queries the Meetup API"
  task :query do

    request = HTTParty.get("https://api.meetup.com/2/open_events?zip=11215&and_text=False&offset=0&format=json&limited_events=False&topic=technology&photo-host=public&page=20&time=1434405600000%2C1434578400000&radius=25.0&desc=False&status=upcoming&key=" + api_key)
    parsedBody = JSON.parse(request.body)['results']

    parsedBody.each do |e|
      # start_time = Date.strptime(params[:start], '%Y%m%d')
      sec = (e['time'].to_i / 1000)
      # time = Date.strptime(sec, '%s')
      time = Time.at(sec)
      string_time = time.to_s
      puts string_time
      if e['venue']
        @event = Hash.new
        @event['name'] = e['name'] || nil
        # @event['time'] = string_time || nil
        # @event['attendee_limit'] = e['rsvp_limit'] || nil
        # @event['location_name'] = e['venue']['name'] || nil
        # @event['street'] = e['venue']['address_1'] || nil
        # @event['city'] = e['venue']['city'] || nil
        # @event['state'] = e['venue']['state'] || nil
        # @event['zip'] = e['venue']['zip'].to_i || nil
        # @event['description'] = e['description'] || nil
        # @event['categories'] = 'technology'
      else 
        @event = Hash.new
        @event['name'] = e['name'] || nil
        # @event['time'] = string_time || nil
        # @event['attendee_limit'] = e['rsvp_limit'] || nil
        # @event['location_name'] = nil
        # @event['street'] = nil
        # @event['city'] = nil
        # @event['state'] =  nil
        # @event['zip'] =  nil
        # @event['description'] = e['description'] || nil
        # @event['categories'] = 'technology'
      end
      
      conn.exec('INSERT INTO EVENTS (name) VALUES ("' << @event['name'] << '");');
      # conn.exec_params('INSERT INTO events (name, time, attendee_limit, location_name, street, city, state, zip, description, categories) VALUES (' << @event["name"] << ', ' << @event["time"] << ', ' << @event["attendee_limit"] << ', ' << @event["location_name"] << ', ' << @event["street"] << ', ' << @event["city"] << ', ' << @event["state"] << ', ' << @event["zip"] << ', ' << @event["description"] << ', ' << @event["categories"] << ');');

    end
  end 
end
