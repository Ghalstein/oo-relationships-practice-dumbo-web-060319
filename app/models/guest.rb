class Guest
  
  @@all = []
  attr_reader :name
  def initialize (name)
  	@name = name
  	@@all << self
  end

  def self.all
  	@@all 
  end

  def trips
  	Trip.all.select {|trip| trip.guest == self} 
  end

  def trip_count
  	self.trips.size
  end

  def self.pro_traveller
  	self.all.select {|guest| guest.trip_count > 1 }
  end

  def self.find_all_by_name (name)
  	self.all.select {|guest| guest.name == name}
  end
end