class Trainer
  attr_accessor :location
  attr_reader :name
  @@all = []
  def initialize (name, *location)
    @location = []
    @name = name
    @location << location
    @@all << self
  end
  def self.all
    @@all
  end
  def self.most_clients
    hash = {}
    @@all.each do |trainer|
      hash[trainer] = 0
    end
    hash.map do |trainer, value|
      count = 0
      count += Client.all.count {|client| client.trainer == trainer}
      hash[trainer] = count
    end
    hash.sort_by {|trainer, client_count| client_count}[-1][0]
  end
end
