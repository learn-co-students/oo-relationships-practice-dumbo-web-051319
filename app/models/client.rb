class Client
  attr_accessor :trainer, :location
  attr_reader :name
  @@all = []
  def initialize (name, trainer = nil, location = nil)
    @name = name
    @trainer = trainer
    @location = location
    @@all << self
  end
  def assign_trainer (trainer)
    self.trainer = trainer
    trainer.location = self.location
  end
  def self.all
    @@all
  end
end
