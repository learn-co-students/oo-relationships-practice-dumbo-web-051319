class Guest

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  # def listings
  #     Listing.all.select {|listing| }
  # end




end
