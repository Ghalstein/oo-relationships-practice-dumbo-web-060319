class Listing
  
  @@all = []
  attr_reader :city
  def initialize (city)
  	@city = city
  	@@all << self
  end

  def trip_listings
  	Trip.all.select {|trip| trip.listing == self}
  end

  def guests
  	self.trip_listings.map {|trip| trip.guest}
  end

  def trips
    self.trip_listings.map {|trip| trip}
  end

  def trip_count
  	self.trips.size
  end
  
  def self.all
  	@@all 
  end

  def self.find_all_by_city (city)
    self.all.select {|listing| listing.city == city}
  end

  def self.most_popular
    max = 0
    pop_listing = nil
  	listing_trip_count = self.all.each {|listing| 
  	  if listing.trips.size > max
  	    max = listing.trips.size
  	    pop_listing = listing
  	  end
  	}
  	pop_listing
  end
end