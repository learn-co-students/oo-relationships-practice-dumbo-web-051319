class Location
  attr_accessor :trainer
  attr_reader :name
  @@all = []
  def initialize (name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def self.least_clients
    hash = {}
    @@all.each do |location|
      hash[location] = 0
    end
    hash.map do |location, value|
      count = 0
      count += Client.all.count {|client| client.location == location}
      hash[location] = count
    end
    hash.sort_by {|location, client_count| client_count}[0][0]
  end
end
