# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
puts "Cleaning database..."
User.destroy_all

puts "Creating User..."
jerem = User.create!( first_name: 'jeremy', last_name: 'beaussart', email: 'jerem@gmail.fr', password: '123456')
quentin = User.create!( first_name: 'quentin', last_name: 'bonnafet', email: 'quentin@gmail.fr', password: '123456')
thomas = User.create!( first_name: 'thomas', last_name: 'pozzobon', email: 'thomas@gmail.fr', password: '123456')

puts "Finished!"
