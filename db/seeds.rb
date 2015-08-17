# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Category.delete_all
Event.delete_all
Availability.delete_all
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
#   time: Time.at(1433015938),
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
#   time: Time.at(1433102338),
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
#   time: Time.at(1433112338),
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
#   time: Time.at(1432929538),
#   attendee_limit: 50,
#   location_name: "New York Business and Tech Meetup",
#   street: "239 Centre St",
#   city: "New York",
#   state: "NY",
#   zip: 10021,
#   description: "Join NetCom Learning trainer, Meganadha Reddy, along with IT and business skills training leader NetCom Learning for a free interactive webinar on JavaScript Object Oriented Programming",
#   categories: "programming"
# })

# Event.create({
#   name: "Google I/O Extended 2015 New York City (Pace University)",
#   time: Time.new(2015,8,16,12,30),
#   attendee_limit: 25,
#   location_name: "Pace",
#   street: "349 Main Street",
#   city: "New York",
#   state: "NY",
#   zip: 10002,
#   description: "Google I/O event",
#   categories: "big data"
# })

# Event.create({
#   name: "Virtual Meetup: Big Datas Application in the Business Environment",
#   time: Time.new(2015,8,16,15,00),
#   attendee_limit: 35,
#   location_name: "A Bar",
#   street: "3490 6th Avenue",
#   city: "New York",
#   state: "NY",
#   zip: 10015,
#   description: "Virtual Meetup",
#   categories: "programming"
# })

# Event.create({
#   name: "Datacenter Visibility with Arista EOS DANZ and Corvil Network Analytics",
#   time: Time.new(2015,8,16,15,00),
#   attendee_limit: 40,
#   location_name: "Place",
#   street: "12 14th Street",
#   city: "New York",
#   state: "NY",
#   zip: 10013,
#   description: "Data Visibility",
#   categories: "innovation"
# })

# Event.create({
#   name: "Are You Serious?",
#   time: Time.new(2015,8,17,16,30),
#   attendee_limit: 40,
#   location_name: "The Hatchery",
#   street: "120 Park Avenue",
#   city: "New York",
#   state: "NY",
#   zip: 10018,
#   description: "seriously",
#   categories: "fitness"
# })

# Event.create({
#   name: "Canonical Ubuntu OpenStack On Autopilot And OpenStack Networking With PLUMgrid",
#   time: Time.new(2015,8,17,16,30),
#   attendee_limit: 40,
#   location_name: "MongoDB",
#   street: "229 West 43rd Street",
#   city: "New York",
#   state: "NY",
#   zip: 10018,
#   description: "In this talk, PLUMgrid will discuss OpenStack architecture with a particular focus on networking.  We'll cover some important considerations for networking in your OpenStack cloud, provide a look at common terminology, and discuss how Open Networking Suite works with OpenStack to alleviate networking challenges.",
#   categories: "big data"
# })

# Event.create({
#   name: "Build your Website with Joomla",
#   time: Time.new(2015,07,30,13,30),
#   attendee_limit: 40,
#   location_name: "AACCT",
#   street: "55 Chrystie Street",
#   city: "New York",
#   state: "NY",
#   zip: 10349,
#   description: "Our group organizer is teaching a core group of people how to build websites for their small businesses and non-profits with Joomla. We've begun meeting weekly and each session is a mix of continuing to learn and practice Joomla fundamentals, mixed with an introduction to some more advanced features or Joomla extensions.",
#   categories: "programming"
# })

# Event.create({
#   name: "Electronics Night: Arduino Office Hours",
#   time: Time.new(2015,07,31,14,00),
#   attendee_limit: 15,
#   location_name: "Hack Manhattan",
#   street: "137 West 14th Street",
#   city: "New York",
#   state: "NY",
#   zip: 10107,
#   description: "Come to Arduino office hours! Bring your project, explain your problem, and we will try to help each other out.",
#   categories: "programming"
# })

# Event.create({
#   name: "Startup Book: Launching Your Self-Published Book (Pizza!)",
#   time: Time.new(2015,07,31,11,00),
#   attendee_limit: 20,
#   location_name: "The Hatchery",
#   street: "1601 Broadway",
#   city: "New York",
#   state: "NY",
#   zip: 10015,
#   description: "We're going to be hosting our event titled Startup Book to coincide with Book Expo America.",
#   categories: "startups"
# })

# Event.create({
#   name: "Come to Happy Hour with the Samsung Business Team",
#   time: Time.new(2015,06,17,12,00),
#   attendee_limit: 25,
#   location_name: "Samsung",
#   street: "92 Broadway",
#   city: "New York",
#   state: "NY",
#   zip: 10006,
#   description: "You are invited to Happy Hour with the Samsung Business Team! Come network,  discuss the new Samsung Business and talk enterprise mobility over drinks.",
#   categories: "innovation"
# })

# Event.create({
#   name: "Django Girls Study Group @ Influenster",
#   time: Time.new(2015,06,17,13,00),
#   attendee_limit: 25,
#   location_name: "Place",
#   street: "298 Atlantic Avenue",
#   city: "Brooklyn",
#   state: "NY",
#   zip: 11205,
#   description: "Are you an experienced Djangonaut and would like to give back along with practicing your coaching skills? Join us as a mentor -- the only requirement is that the tutorial covers familiar material for you.",
#   categories: "programming"
# })

# Event.create({
#   name: "Is What You Do Right For You?",
#   time: Time.new(2015,06,18,16,00),
#   attendee_limit: 30,
#   location_name: "NYPL",
#   street: "188 Madison Avenue",
#   city: "New York",
#   state: "NY",
#   zip: 10037,
#   description: "A Holistic Approach to Assessing Career Fit  
#     Adia Tucker offers tips for assessing your current job and career fit. Seating is on a first come, first seated basis unless otherwise noted.",
#   categories: "innovation"
# })

# Event.create({
#   name: "Rooftop Happy Hour",
#   time: Time.new(2015,06,18,15,30),
#   attendee_limit: 30,
#   location_name: "Hudson Terrace",
#   street: "621 West 46th Street",
#   city: "New York",
#   state: "NY",
#   zip: 10172,
#   description: "Happy Hour!",
#   categories: "food"
# })

# Event.create({
#   name: "Drinks, Snacks and Hadoop! Join us for weekly evenings informational sessions.",
#   time: Time.new(2015,06,18,16,30),
#   attendee_limit: 30,
#   location_name: "Quantilus Inc",
#   street: "115 Broadway",
#   city: "New York",
#   state: "NY",
#   zip: 10006,
#   description: "Drink and food!",
#   categories: "food"
# })

# Event.create({
#   name: "Spring Happy Hour with Startup Weekend at Pier A Harbor House",
#   time: Time.new(2015,06,18,18,30),
#   attendee_limit: 30,
#   location_name: "Pier A Harbor House",
#   street: "22 Battery Place",
#   city: "New York",
#   state: "NY",
#   zip: 10012,
#   description: "Startup Happy Hour",
#   categories: "food"
# })

# Event.create({
#   name: "Spring Happy Hour with Startup Weekend at Pier A Harbor House",
#   time: Time.new(2015,06,18,18,30),
#   attendee_limit: 30,
#   location_name: "Pier A Harbor House",
#   street: "22 Battery Place",
#   city: "New York",
#   state: "NY",
#   zip: 10012,
#   description: "Startup Happy Hour",
#   categories: "food"
# })

# Event.create({
#   name: "OpenShop at JC Fab Lab!",
#   time: Time.new(2015,06,19,19,00),
#   attendee_limit: 12,
#   location_name: "Towhee co / JC Fab Lab",
#   street: "195 New York Ave.",
#   city: "Jersey City",
#   state: "NJ",
#   zip: 07122,
#   description: "Please be our guest at our OpenShop at JC Fab Lab! Bring a project idea, or, even a project in progress to share with the group or collaborators.",
#   categories: "startups"
# })

# Event.create({
#   name: "YeSQL: Battling the NoSQL Hype Cycle with Postgres (+beer, drinks, swag, food)",
#   time: Time.new(2015,06,19,15,00),
#   attendee_limit: 20,
#   location_name: "Thoughtworks",
#   street: "99 Madison Ave.",
#   city: "New York",
#   state: "NY",
#   zip: 11938,
#   description: "Free beer + drinks, swag, junk-food & more!",
#   categories: "food"
# })

# Event.create({
#   name: "Test Tube - May",
#   time: Time.new(2015,06,19,15,00),
#   attendee_limit: 20,
#   location_name: "WeWork Fulton Street",
#   street: "222 Broadway",
#   city: "New York",
#   state: "NY",
#   zip: 10007,
#   description: "Join us for an evening of intense usability testing with fellow startup companies.",
#   categories: "animals"
# })

# Event.create({
#   name: "Meet for SPEED",
#   time: Time.new(2015,06,19,15,30),
#   attendee_limit: 35,
#   location_name: "HQ",
#   street: "49 West 18th Street",
#   city: "New York",
#   state: "NY",
#   zip: 10370,
#   description: "Bring your laptop and we'll work together on optimizing our sites.",
#   categories: "user experience"
# })

# Event.create({
#   name: "Inside Startups Mixer",
#   time: Time.new(2015,06,19,17,30),
#   attendee_limit: 40,
#   location_name: "Startup Land",
#   street: "208 57th Street",
#   city: "New York",
#   state: "NY",
#   zip: 10121,
#   description: "Inside Startups brings together creative, passionate people who work within, or are interested in, NYC's startup community. If you're looking to land a job you love, aiming to hire top talent or simply wanting to meet other inspiring individuals... then this event is perfect for you.",
#   categories: "innovation"
# })

# Event.create({
#   name: "DO Engineers: Sean (Thor) Swehla & Chris Paro",
#   time: Time.new(2015,06,19,18,30),
#   attendee_limit: 40,
#   location_name: "Digital Ocean",
#   street: "29 West 23rd Street",
#   city: "New York",
#   state: "NY",
#   zip: 10120,
#   description: "Perspective is a tool developed and used at DigitalOcean to present event data in ways that make it easy for a human user to detect patterns (and deviations from these patterns) as a complement to traditional reporting dashboards and automated monitoring systems. ",
#   categories: "artificial intelligence"
# })

# Event.create({
#  name: "Petascale Key Value Stores and App Driven Analytics (+ swag, beer/drinks, candy)",
#  time: Time.new(2015,06,19,14,30),
#  attendee_limit: 100,
#  location_name: "ThoughtWorks",
#  street: "99 Madison Ave., 15th Floor",
#  city: "New York",
#  state: "NY",
#  zip: 10016,
#  description: "Free swag, beer/drinks, candy & more! Brian Bulkowski, Co-Founder & Chief Technical Officer, Aerospike.",
#  categories: "javascript"
# })

# Event.create({
#  name: "Intro to Web Development Workshop",
#  time: Time.new(2015,06,19,15,00),
#  attendee_limit: 45,
#  location_name: "needs location",
#  street: "needs location",
#  city: "New York",
#  state: "NY",
#  zip: 10016,
#  description: "Description coming soon.",
#  categories: "programming"
# })


# Event.create({
#  name: "The UX of Tomorrow: Designing for the Unknown",
#  time: Time.new(2015,06,19,13,30),
#  attendee_limit: 20,
#  location_name: "Shutterstock",
#  street: "347 5th Ave",
#  city: "New York",
#  state: "NY",
#  zip: 10016,
#  description: "MIT Enterprise Forum of NYC Presents: The UX of Tomorrow: Designing for the Unknown on June 4th at Shutterstock featuring Beverly May, Ryan Gossen, Jay Vidyarthi, and Jeff Feddersen.",
#  categories: "user experience"
# })


# Event.create({
#  name: "'So You Want A Career in UX' Panel",
#  time: Time.new(2015,06,20,14,00),
#  attendee_limit: 50,
#  location_name: "This location is shown only to members",
#  street: "This location is shown only to members",
#  city: "New York",
#  state: "NY",
#  zip: 10016,
#  description: "So You Want A Career in UX and you're trying to figure out what is needed to land your dream job. Hear from some of the industry's leading professionals from the recruitment side of UX and what their take is on resumes, portfolios, and personal branding. ",
#  categories: "user experience"
# })

Availability.create({
  user_id: 1,
  day_of_the_week: 'Monday',
  start_time: 13,
  end_time: 22
})

Availability.create({
  user_id: 1,
  day_of_the_week: 'Tuesday',
  start_time: 13,
  end_time: 22
})

Availability.create({
  user_id: 1,
  day_of_the_week: 'Wednesday',
  start_time: 16,
  end_time: 24
})

Availability.create({
  user_id: 1,
  day_of_the_week: 'Thursday',
  start_time: 16,
  end_time: 24
})

Availability.create({
  user_id: 1,
  day_of_the_week: 'Friday',
  start_time: 15,
  end_time: 18
})

Availability.create({
  user_id: 1,
  day_of_the_week: 'Saturday',
  start_time: 1,
  end_time: 23
})

Availability.create({
  user_id: 1,
  day_of_the_week: 'Sunday',
  start_time: 1,
  end_time: 4
})