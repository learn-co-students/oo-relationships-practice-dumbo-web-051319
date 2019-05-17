require 'pry'
class Listing

    attr_reader :name, :city
    attr_accessor :guest, :trip
    @@all = []

    def initialize(name, city)
        @name = name
        @city =  city
        @@all << self

    end

    def trips
      Trip.all.select do |trip|
        trip.listing == self
      end
    end

    def guests
      trips.map do |trip|
        trip.guest
      end
    end

    def self.all
      @@all
    end







end
