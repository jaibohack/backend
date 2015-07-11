# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Event.create(name: 'Jaibohack 2015', venue: "Tec Monterrey Tampico", begins_on: "04-09-2015", registration_ends_on: "01-09-2015", attendees_limit: 100)