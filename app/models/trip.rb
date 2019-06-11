class Trip
  
  @@all = []
  attr_reader :guest, :listing
  def initialize (listing, guest)
  	@guest = guest
  	@listing = listing
  	@@all << self
  end

  def self.all
  	@@all 
  end
end