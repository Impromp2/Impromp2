set :output, "log/cron.log"

every 1.day, :at => '12:00 am' do
  command "/lib/tasks/query_api.rake"
  rake "query_api:query"
  puts "rake task executed!"
end

