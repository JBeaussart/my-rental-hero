# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
puts "Cleaning database..."
SuperHero.destroy_all
# User.destroy_all

puts "Creating User..."
jerem = User.create!( first_name: 'jeremy', email: 'totodjbfjbf@gmail.fr', password: '123456')
puts "Creating SuperHeros..."
ironman = SuperHero.create!( nickname: 'Iron man' ,  description: 'Je suis un genie milliardaire', user_id: jerem.id )

puts "Finished!"
