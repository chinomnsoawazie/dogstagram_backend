# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all


User.create(name: 'Chinomnso', handle: '@awazie', city: 'New York', state: 'New York', country: 'United States', password_digest:  BCrypt::Password.create("password"))
User.create(name: 'Obiora', handle: '@awazie', city: 'New York', state: 'New York', country: 'United States', password_digest:  BCrypt::Password.create("password"))


puts '============================'
puts '.......SEEDED...............'
puts '============================'