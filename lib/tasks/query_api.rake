require 'pg'

namespace :query_api do
  psql_user = File.read('lib/tasks/.psql_user')
  psql_password = File.read('lib/tasks/.psql_password')

  conn = PG::Connection.open(:dbname => 'Impromp2_development', :user => psql_user, :password => psql_password);

  api_key = File.read('lib/tasks/.api_key')
  desc "Queries the Meetup API"
  task :query do

    request = HTTParty.get("https://api.meetup.com/2/open_events?zip=11215&and_text=False&offset=0&format=json&limited_events=False&topic=technology&photo-host=public&page=100&time=,1w&radius=25.0&desc=False&status=upcoming&key=" + api_key)
    parsedBody = JSON.parse(request.body)['results']
    puts parsedBody
    i = 0
    parsedBody.each do |e|
      sec = (e['time'].to_i / 1000)
      time = Time.at(sec)
      string_time = time.to_s
      if e['venue']
        @event = Hash.new
        @event['name'] = e['name'] || nil
        @event['time'] = string_time || nil
        @event['attendee_limit'] = e['rsvp_limit'] || nil
        @event['location_name'] = e['venue']['name'] || nil
        @event['street'] = e['venue']['address_1'] || nil
        @event['city'] = e['venue']['city'] || nil
        @event['state'] = e['venue']['state'] || nil
        @event['zip'] = e['venue']['zip'].to_i || nil
        @event['description'] = e['description'] || nil
        @event['categories'] = 'technology'
      else 
        @event = Hash.new
        @event['name'] = e['name'] || nil
        @event['time'] = string_time || nil
        @event['attendee_limit'] = e['rsvp_limit'] || nil
        @event['location_name'] = nil
        @event['street'] = nil
        @event['city'] = nil
        @event['state'] =  nil
        @event['zip'] =  nil
        @event['description'] = e['description'] || nil
        @event['categories'] = 'technology'
      end     

      conn.prepare(i.to_s, 'INSERT INTO events (name, time, attendee_limit, location_name, street, city, state, zip, description, categories, created_at, updated_at) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12);');
      conn.exec_prepared(i.to_s, [@event['name'], @event['time'], @event['attendee_limit'], @event['location_name'], @event['street'], @event['city'], @event['state'], @event['zip'], @event['description'], @event['categories'], DateTime.now, DateTime.now ])

      i = i + 1
    end
  end 
end
