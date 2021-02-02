# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
puts "Cleaning database..."
SuperHero.destroy_all

puts "Creating SuperHeros..."
ironman = SuperHero.create([{ nickname: 'Iron man' }, { description: 'Je suis un genie milliardaire' }])

puts "Finished!"
