# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    category:  'french',
    phone_number: '+1 937-903-2256'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    category:  'belgian',
    phone_number: '+33 0987 463829'
  },
  {
    name:         'China City',
    address:      '252 East Gay Street, Columbus, OH 43215',
    category:  'chinese',
    phone_number: '+49 0987 12345'
  },
  {
    name:         'Chicago Pizza',
    address:      'Kommandantenstrasse 79, 10117 Berlin',
    category:  'japanese',
    phone_number: '+1 903-937-0848'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
