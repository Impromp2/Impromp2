namespace :query_api do
  api_key = open('../assets/.api_key').read()
  desc "Queries the Meetup API"
  task :query do
    request = HTTParty.get("https://api.meetup.com/2/open_events?zip=11215&and_text=False&offset=0&format=json&limited_events=False&topic=technology&photo-host=public&page=20&time=1434405600000%2C1434578400000&radius=25.0&desc=False&status=upcoming&key=" + api_key)
    puts JSON.parse(request.body)['results']
  end 
end
