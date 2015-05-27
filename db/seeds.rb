# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Category.delete_all
# Event.delete_all

# Category.create({category: "big data"})
# Category.create({category: "fitness"})
# Category.create({category: "user experience"})
# Category.create({category: "startups"})
# Category.create({category: "animals"})
# Category.create({category: "artificial intelligence"})
# Category.create({category: "innovation"})
# Category.create({category: "photography"})
# Category.create({category: "food"})
# Category.create({category: "ruby"})
# Category.create({category: "programming"})
# Category.create({category: "javascript"})

# Event.create({
#   name: "Building iOS apps with React Native",
#   time: Time.at(1432657800),
#   attendee_limit: 50,
#   location_name: "Metabahn",
#   street: "6767 Old Madison Pike NW #450",
#   city: "Huntsville",
#   state: "AL",
#   zip: 10021,
#   description: "Chad Taylor will share his experiences with building iOS apps using React Native.",
#   categories: "programming"
# })

# Event.create({
#   name: "Volunteer and Run the Rugged Maniac for Free",
#   time: Time.at(1432645200),
#   attendee_limit: 25,
#   location_name: "Aviator Sports and Event Center",
#   street: "3159 Flatbush Avenue",
#   city: "Brooklyn",
#   state: "NY",
#   zip: 10020,
#   description: "Hey all I've wanted to do a mud race for a while, but never had the time or money to do it. Unfortunately, the volunteer slots for the Spartan race at City Field are full, but there is still plenty of time to sign up for the Rugged Maniac which takes place in the Aviator Center in Brooklyn. I've read it's a fun race that is still pretty challenging. Registration for volunteering opens 5/25 for the race on 6/27 or 6/28 and it fills up quickly. There is a $50 deposit required, but this money gets refunded after you complete your volunteer shift. More information can be found on the website: <a href='http://www.ruggedmaniac.com/volunteer/' class='linkified'>http://www.ruggedmaniac.com/volunteer/</a></p> <p>If you don't want to volunteer, but run, the prices are $59 until 1/30, $69 until 3/6, $79 until 4/10, $89 until 5/15 and $99 until 6/23. You can get a $5 off by using the discount code MRG and students and veterans get a $10 discount provided you show ID at the race.",
#   categories: "fitness"
# })

# Event.create({
#   name: "Quick 40 minute work out!",
#   time: Time.at(1432650600),
#   attendee_limit: 40,
#   location_name: "Bryant Park",
#   street: "100 42nd Street",
#   city: "New York",
#   state: "NY",
#   zip: 10021,
#   description: "Take your infant or toddler to the grassy area of Bryant and Shunpike for a quick 40 minute work out",
#   categories: "fitness"
# })

# Event.create({
#   name: "Virtual Meetup: JavaScript Object Oriented Programming",
#   time: Time.at(1432659600),
#   attendee_limit: 50,
#   location_name: "New York Business and Tech Meetup",
#   street: "239 Centre St",
#   city: "New York",
#   state: "NY",
#   zip: 10021,
#   description: "Join NetCom Learning trainer, Meganadha Reddy, along with IT and business skills training leader NetCom Learning for a free interactive webinar on JavaScript Object Oriented Programming",
#   categories: "programming"
# })

Availability.create({
  user_id: 1,
  day_of_the_week: 'Monday',
  start_time: 3,
  end_time: 4
})

Availability.create({
  user_id: 1,
  day_of_the_week: 'Wednesday',
  start_time: 6,
  end_time: 7
})

Availability.create({
  user_id: 1,
  day_of_the_week: 'Friday',
  start_time: 15,
  end_time: 18
})
