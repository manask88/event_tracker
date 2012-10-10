# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Location.create(name: 'Ini DEC', description: 'located in INI basement')
Event.create(name: 'Ice Cream Social', description: 'Informal event',location_id: 1,starts: '2007-09-01 04:03:00 UTC',ends: '2007-09-01 05:03:00 UTC')


