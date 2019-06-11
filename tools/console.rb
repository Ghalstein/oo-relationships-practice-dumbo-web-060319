require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

listing_1 = Listing.new("new york")
listing_2 = Listing.new("new york")
listing_3 = Listing.new("los angeles")
listing_4 = Listing.new("los angeles")
listing_5 = Listing.new("los angeles")

guest_1 = Guest.new("garrett")
guest_2 = Guest.new("logan")
guest_3 = Guest.new("garrett")
guest_4 = Guest.new("richard")
guest_5 = Guest.new("hamza")
guest_6 = Guest.new("alex")

trip_1 = Trip.new(listing_1, guest_1)
trip_2 = Trip.new(listing_2, guest_1)
trip_3 = Trip.new(listing_3, guest_2)
trip_4 = Trip.new(listing_3, guest_3)
trip_5 = Trip.new(listing_3, guest_4)
trip_6 = Trip.new(listing_4, guest_1)
trip_7 = Trip.new(listing_5, guest_6)





Pry.start
