require 'pry'
require "./app/models/guest.rb"
require "./app/models/listing.rb"
require "./app/models/trip.rb"



beach_bungalow = Listing.new("Beach Bungalow", "Florida")
brooklyn_apt = Listing.new("Brooklyn Apartment", "New York")
manhattan_apt = Listing.new("Manhattan Apt", "New York")
cabin = Listing.new("Cabin", "Vermont")
jungle_cave = Listing.new("Jungle Cave", "Amazon")

guest_1 = Guest.new("Avi")
guest_2 = Guest.new("Tom")
guest_3 = Guest.new("Joe")

trip_1 = Trip.new(guest_1, brooklyn_apt)
trip_2 = Trip.new(guest_2, beach_bungalow)
trip_3 = Trip.new(guest_3, cabin)
















binding.pry
puts "done"
